# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatch
  module Types

    # Represents the history of a specific alarm.
    #
    # @!attribute [rw] alarm_name
    #   The descriptive name for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time stamp for the alarm history item.
    #   @return [Time]
    #
    # @!attribute [rw] history_item_type
    #   The type of alarm history item.
    #   @return [String]
    #
    # @!attribute [rw] history_summary
    #   A summary of the alarm history, in text format.
    #   @return [String]
    #
    # @!attribute [rw] history_data
    #   Data about the alarm, in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/AlarmHistoryItem AWS API Documentation
    #
    class AlarmHistoryItem < Struct.new(
      :alarm_name,
      :timestamp,
      :history_item_type,
      :history_summary,
      :history_data)
      include Aws::Structure
    end

    # Encapsulates the statistical data that Amazon CloudWatch computes from
    # metric data.
    #
    # @!attribute [rw] timestamp
    #   The time stamp used for the data point.
    #   @return [Time]
    #
    # @!attribute [rw] sample_count
    #   The number of metric values that contributed to the aggregate value
    #   of this data point.
    #   @return [Float]
    #
    # @!attribute [rw] average
    #   The average of the metric values that correspond to the data point.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of the metric values for the data point.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum metric value for the data point.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum metric value for the data point.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The standard unit for the data point.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistics
    #   The percentile statistic for the data point.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Datapoint AWS API Documentation
    #
    class Datapoint < Struct.new(
      :timestamp,
      :sample_count,
      :average,
      :sum,
      :minimum,
      :maximum,
      :unit,
      :extended_statistics)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAlarmsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"], # required
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The alarms to be deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DeleteAlarmsInput AWS API Documentation
    #
    class DeleteAlarmsInput < Struct.new(
      :alarm_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmHistoryInput
    #   data as a hash:
    #
    #       {
    #         alarm_name: "AlarmName",
    #         history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         max_records: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] history_item_type
    #   The type of alarm histories to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The starting date to retrieve alarm history.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The ending date to retrieve alarm history.
    #   @return [Time]
    #
    # @!attribute [rw] max_records
    #   The maximum number of alarm history records to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistoryInput AWS API Documentation
    #
    class DescribeAlarmHistoryInput < Struct.new(
      :alarm_name,
      :history_item_type,
      :start_date,
      :end_date,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] alarm_history_items
    #   The alarm histories, in JSON format.
    #   @return [Array<Types::AlarmHistoryItem>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmHistoryOutput AWS API Documentation
    #
    class DescribeAlarmHistoryOutput < Struct.new(
      :alarm_history_items,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmsForMetricInput
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName", # required
    #         namespace: "Namespace", # required
    #         statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
    #         extended_statistic: "ExtendedStatistic",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         period: 1,
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric, other than percentiles. For percentile
    #   statistics, use `ExtendedStatistics`.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric. Specify a value between
    #   p0.0 and p100.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions associated with the metric. If the metric has any
    #   associated dimensions, you must specify them in order for the call
    #   to succeed.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit for the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetricInput AWS API Documentation
    #
    class DescribeAlarmsForMetricInput < Struct.new(
      :metric_name,
      :namespace,
      :statistic,
      :extended_statistic,
      :dimensions,
      :period,
      :unit)
      include Aws::Structure
    end

    # @!attribute [rw] metric_alarms
    #   The information for each alarm with the specified metric.
    #   @return [Array<Types::MetricAlarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsForMetricOutput AWS API Documentation
    #
    class DescribeAlarmsForMetricOutput < Struct.new(
      :metric_alarms)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAlarmsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"],
    #         alarm_name_prefix: "AlarmNamePrefix",
    #         state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
    #         action_prefix: "ActionPrefix",
    #         max_records: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_name_prefix
    #   The alarm name prefix. You cannot specify `AlarmNames` if this
    #   parameter is specified.
    #   @return [String]
    #
    # @!attribute [rw] state_value
    #   The state value to be used in matching alarms.
    #   @return [String]
    #
    # @!attribute [rw] action_prefix
    #   The action name prefix.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of alarm descriptions to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsInput AWS API Documentation
    #
    class DescribeAlarmsInput < Struct.new(
      :alarm_names,
      :alarm_name_prefix,
      :state_value,
      :action_prefix,
      :max_records,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] metric_alarms
    #   The information for the specified alarms.
    #   @return [Array<Types::MetricAlarm>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DescribeAlarmsOutput AWS API Documentation
    #
    class DescribeAlarmsOutput < Struct.new(
      :metric_alarms,
      :next_token)
      include Aws::Structure
    end

    # Expands the identity of a metric.
    #
    # @note When making an API call, you may pass Dimension
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value representing the dimension measurement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # Represents filters for a dimension.
    #
    # @note When making an API call, you may pass DimensionFilter
    #   data as a hash:
    #
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue",
    #       }
    #
    # @!attribute [rw] name
    #   The dimension name to be matched.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension to be matched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DimensionFilter AWS API Documentation
    #
    class DimensionFilter < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableAlarmActionsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"], # required
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/DisableAlarmActionsInput AWS API Documentation
    #
    class DisableAlarmActionsInput < Struct.new(
      :alarm_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableAlarmActionsInput
    #   data as a hash:
    #
    #       {
    #         alarm_names: ["AlarmName"], # required
    #       }
    #
    # @!attribute [rw] alarm_names
    #   The names of the alarms.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/EnableAlarmActionsInput AWS API Documentation
    #
    class EnableAlarmActionsInput < Struct.new(
      :alarm_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMetricStatisticsInput
    #   data as a hash:
    #
    #       {
    #         namespace: "Namespace", # required
    #         metric_name: "MetricName", # required
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         period: 1, # required
    #         statistics: ["SampleCount"], # accepts SampleCount, Average, Sum, Minimum, Maximum
    #         extended_statistics: ["ExtendedStatistic"],
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric, with or without spaces.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric, with or without spaces.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions. CloudWatch treats each unique combination of
    #   dimensions as a separate metric. You can't retrieve statistics
    #   using combinations of dimensions that were not specially published.
    #   You must specify the same dimensions that were used when the metrics
    #   were created. For an example, see [Dimension Combinations][1] in the
    #   *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] start_time
    #   The time stamp that determines the first data point to return. Note
    #   that start times are evaluated relative to the time that CloudWatch
    #   receives the request.
    #
    #   The value specified is inclusive; results include data points with
    #   the specified time stamp. The time stamp must be in ISO 8601 UTC
    #   format (for example, 2016-10-03T23:00:00Z).
    #
    #   CloudWatch rounds the specified time stamp as follows:
    #
    #   * Start time less than 15 days ago - Round down to the nearest whole
    #     minute. For example, 12:32:34 is rounded down to 12:32:00.
    #
    #   * Start time between 15 and 63 days ago - Round down to the nearest
    #     5-minute clock interval. For example, 12:32:34 is rounded down to
    #     12:30:00.
    #
    #   * Start time greater than 63 days ago - Round down to the nearest
    #     1-hour clock interval. For example, 12:32:34 is rounded down to
    #     12:00:00.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time stamp that determines the last data point to return.
    #
    #   The value specified is exclusive; results will include data points
    #   up to the specified time stamp. The time stamp must be in ISO 8601
    #   UTC format (for example, 2016-10-10T23:00:00Z).
    #   @return [Time]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points. A period
    #   can be as short as one minute (60 seconds) and must be a multiple of
    #   60. The default value is 60.
    #
    #   If the `StartTime` parameter specifies a time stamp that is greater
    #   than 15 days ago, you must specify the period as follows or no data
    #   points in that time range is returned:
    #
    #   * Start time between 15 and 63 days ago - Use a multiple of 300
    #     seconds (5 minutes).
    #
    #   * Start time greater than 63 days ago - Use a multiple of 3600
    #     seconds (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] statistics
    #   The metric statistics, other than percentile. For percentile
    #   statistics, use `ExtendedStatistic`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] extended_statistics
    #   The percentile statistics. Specify values between p0.0 and p100.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unit
    #   The unit for a given metric. Metrics may be reported in multiple
    #   units. Not supplying a unit results in all units being returned. If
    #   the metric only ever reports one unit, specifying a unit has no
    #   effect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricStatisticsInput AWS API Documentation
    #
    class GetMetricStatisticsInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :start_time,
      :end_time,
      :period,
      :statistics,
      :extended_statistics,
      :unit)
      include Aws::Structure
    end

    # @!attribute [rw] label
    #   A label for the specified metric.
    #   @return [String]
    #
    # @!attribute [rw] datapoints
    #   The data points for the specified metric.
    #   @return [Array<Types::Datapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/GetMetricStatisticsOutput AWS API Documentation
    #
    class GetMetricStatisticsOutput < Struct.new(
      :label,
      :datapoints)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMetricsInput
    #   data as a hash:
    #
    #       {
    #         namespace: "Namespace",
    #         metric_name: "MetricName",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue",
    #           },
    #         ],
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace to filter against.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to filter against.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions to filter against.
    #   @return [Array<Types::DimensionFilter>]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetricsInput AWS API Documentation
    #
    class ListMetricsInput < Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] metrics
    #   The metrics.
    #   @return [Array<Types::Metric>]
    #
    # @!attribute [rw] next_token
    #   The token that marks the start of the next batch of returned
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/ListMetricsOutput AWS API Documentation
    #
    class ListMetricsOutput < Struct.new(
      :metrics,
      :next_token)
      include Aws::Structure
    end

    # Represents a specific metric.
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric.
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/Metric AWS API Documentation
    #
    class Metric < Struct.new(
      :namespace,
      :metric_name,
      :dimensions)
      include Aws::Structure
    end

    # Represents an alarm.
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_description
    #   The description of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_configuration_updated_timestamp
    #   The time stamp of the last update to the alarm configuration.
    #   @return [Time]
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state.
    #   @return [Boolean]
    #
    # @!attribute [rw] ok_actions
    #   The actions to execute when this alarm transitions to the `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_actions
    #   The actions to execute when this alarm transitions to the `ALARM`
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #   @return [Array<String>]
    #
    # @!attribute [rw] state_value
    #   The state value for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   An explanation for the alarm state, in text format.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_data
    #   An explanation for the alarm state, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] state_updated_timestamp
    #   The time stamp of the last update to the alarm state.
    #   @return [Time]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   Specify a value between p0.0 and p100.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric associated with the alarm.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value to compare with the specified statistic.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic and threshold. The specified statistic value is used as
    #   the first operand.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricAlarm AWS API Documentation
    #
    class MetricAlarm < Struct.new(
      :alarm_name,
      :alarm_arn,
      :alarm_description,
      :alarm_configuration_updated_timestamp,
      :actions_enabled,
      :ok_actions,
      :alarm_actions,
      :insufficient_data_actions,
      :state_value,
      :state_reason,
      :state_reason_data,
      :state_updated_timestamp,
      :metric_name,
      :namespace,
      :statistic,
      :extended_statistic,
      :dimensions,
      :period,
      :unit,
      :evaluation_periods,
      :threshold,
      :comparison_operator)
      include Aws::Structure
    end

    # Encapsulates the information sent to either create a metric or add new
    # values to be aggregated into an existing metric.
    #
    # @note When making an API call, you may pass MetricDatum
    #   data as a hash:
    #
    #       {
    #         metric_name: "MetricName", # required
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         timestamp: Time.now,
    #         value: 1.0,
    #         statistic_values: {
    #           sample_count: 1.0, # required
    #           sum: 1.0, # required
    #           minimum: 1.0, # required
    #           maximum: 1.0, # required
    #         },
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #       }
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions associated with the metric.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] timestamp
    #   The time the metric data was received, expressed as the number of
    #   milliseconds since Jan 1, 1970 00:00:00 UTC.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The value for the metric.
    #
    #   Although the parameter accepts numbers of type Double, Amazon
    #   CloudWatch rejects values that are either too small or too large.
    #   Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base
    #   10) or 2e-360 to 2e360 (Base 2). In addition, special values (for
    #   example, NaN, +Infinity, -Infinity) are not supported.
    #   @return [Float]
    #
    # @!attribute [rw] statistic_values
    #   The statistical values for the metric.
    #   @return [Types::StatisticSet]
    #
    # @!attribute [rw] unit
    #   The unit of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/MetricDatum AWS API Documentation
    #
    class MetricDatum < Struct.new(
      :metric_name,
      :dimensions,
      :timestamp,
      :value,
      :statistic_values,
      :unit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutMetricAlarmInput
    #   data as a hash:
    #
    #       {
    #         alarm_name: "AlarmName", # required
    #         alarm_description: "AlarmDescription",
    #         actions_enabled: false,
    #         ok_actions: ["ResourceName"],
    #         alarm_actions: ["ResourceName"],
    #         insufficient_data_actions: ["ResourceName"],
    #         metric_name: "MetricName", # required
    #         namespace: "Namespace", # required
    #         statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
    #         extended_statistic: "ExtendedStatistic",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           },
    #         ],
    #         period: 1, # required
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         evaluation_periods: 1, # required
    #         threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name for the alarm. This name must be unique within the AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] alarm_description
    #   The description for the alarm.
    #   @return [String]
    #
    # @!attribute [rw] actions_enabled
    #   Indicates whether actions should be executed during any changes to
    #   the alarm state.
    #   @return [Boolean]
    #
    # @!attribute [rw] ok_actions
    #   The actions to execute when this alarm transitions to an `OK` state
    #   from any other state. Each action is specified as an Amazon Resource
    #   Name (ARN).
    #
    #   Valid Values: arn:aws:automate:*region*\:ec2:stop \|
    #   arn:aws:automate:*region*\:ec2:terminate \|
    #   arn:aws:automate:*region*\:ec2:recover
    #
    #   Valid Values (for use with IAM roles):
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
    #   \|
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
    #   \|
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_actions
    #   The actions to execute when this alarm transitions to the `ALARM`
    #   state from any other state. Each action is specified as an Amazon
    #   Resource Name (ARN).
    #
    #   Valid Values: arn:aws:automate:*region*\:ec2:stop \|
    #   arn:aws:automate:*region*\:ec2:terminate \|
    #   arn:aws:automate:*region*\:ec2:recover
    #
    #   Valid Values (for use with IAM roles):
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
    #   \|
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
    #   \|
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
    #   @return [Array<String>]
    #
    # @!attribute [rw] insufficient_data_actions
    #   The actions to execute when this alarm transitions to the
    #   `INSUFFICIENT_DATA` state from any other state. Each action is
    #   specified as an Amazon Resource Name (ARN).
    #
    #   Valid Values: arn:aws:automate:*region*\:ec2:stop \|
    #   arn:aws:automate:*region*\:ec2:terminate \|
    #   arn:aws:automate:*region*\:ec2:recover
    #
    #   Valid Values (for use with IAM roles):
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
    #   \|
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
    #   \|
    #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
    #   @return [Array<String>]
    #
    # @!attribute [rw] metric_name
    #   The name for the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm, other than
    #   percentile. For percentile statistics, use `ExtendedStatistic`.
    #   @return [String]
    #
    # @!attribute [rw] extended_statistic
    #   The percentile statistic for the metric associated with the alarm.
    #   Specify a value between p0.0 and p100.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric associated with the alarm.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the specified statistic is
    #   applied.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of measure for the statistic. For example, the units for
    #   the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks
    #   the number of bytes that an instance receives on all network
    #   interfaces. You can also specify a unit when you create a custom
    #   metric. Units help provide conceptual meaning to your data. Metric
    #   data points that specify a unit of measure, such as Percent, are
    #   aggregated separately.
    #
    #   If you specify a unit, you must use a unit that is appropriate for
    #   the metric. Otherwise, the Amazon CloudWatch alarm can get stuck in
    #   the `INSUFFICIENT DATA` state.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic and threshold. The specified statistic value is used as
    #   the first operand.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricAlarmInput AWS API Documentation
    #
    class PutMetricAlarmInput < Struct.new(
      :alarm_name,
      :alarm_description,
      :actions_enabled,
      :ok_actions,
      :alarm_actions,
      :insufficient_data_actions,
      :metric_name,
      :namespace,
      :statistic,
      :extended_statistic,
      :dimensions,
      :period,
      :unit,
      :evaluation_periods,
      :threshold,
      :comparison_operator)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutMetricDataInput
    #   data as a hash:
    #
    #       {
    #         namespace: "Namespace", # required
    #         metric_data: [ # required
    #           {
    #             metric_name: "MetricName", # required
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               },
    #             ],
    #             timestamp: Time.now,
    #             value: 1.0,
    #             statistic_values: {
    #               sample_count: 1.0, # required
    #               sum: 1.0, # required
    #               minimum: 1.0, # required
    #               maximum: 1.0, # required
    #             },
    #             unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespace for the metric data.
    #
    #   You cannot specify a namespace that begins with "AWS/". Namespaces
    #   that begin with "AWS/" are reserved for use by Amazon Web Services
    #   products.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   The data for the metric.
    #   @return [Array<Types::MetricDatum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/PutMetricDataInput AWS API Documentation
    #
    class PutMetricDataInput < Struct.new(
      :namespace,
      :metric_data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetAlarmStateInput
    #   data as a hash:
    #
    #       {
    #         alarm_name: "AlarmName", # required
    #         state_value: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
    #         state_reason: "StateReason", # required
    #         state_reason_data: "StateReasonData",
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name for the alarm. This name must be unique within the AWS
    #   account. The maximum length is 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] state_value
    #   The value of the state.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that this alarm is set to this specific state, in text
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] state_reason_data
    #   The reason that this alarm is set to this specific state, in JSON
    #   format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/SetAlarmStateInput AWS API Documentation
    #
    class SetAlarmStateInput < Struct.new(
      :alarm_name,
      :state_value,
      :state_reason,
      :state_reason_data)
      include Aws::Structure
    end

    # Represents a set of statistics that describes a specific metric.
    #
    # @note When making an API call, you may pass StatisticSet
    #   data as a hash:
    #
    #       {
    #         sample_count: 1.0, # required
    #         sum: 1.0, # required
    #         minimum: 1.0, # required
    #         maximum: 1.0, # required
    #       }
    #
    # @!attribute [rw] sample_count
    #   The number of samples used for the statistic set.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum of values for the sample set.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum value of the sample set.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum value of the sample set.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/monitoring-2010-08-01/StatisticSet AWS API Documentation
    #
    class StatisticSet < Struct.new(
      :sample_count,
      :sum,
      :minimum,
      :maximum)
      include Aws::Structure
    end

  end
end
