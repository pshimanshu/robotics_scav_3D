?	?!???@?!???@!?!???@	zeM?<9??zeM?<9??!zeM?<9??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?!???@y?	??yp@1??cx을@A?ǚ?A???I??@?m?@@Y??{b???rEagerKernelExecute 0*	??"???w@2F
Iterator::Model?n?|?b??!??2M??V@)m??3???11Wrv#jQ@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch??}?Az??!?ی"?+@)??}?Az??1?ی"?+@:Preprocessing2?
JIterator::Model::MaxIntraOpParallelism::Prefetch::MapAndBatch::TensorSlice8?Jw?٠?!?h?U3!@)8?Jw?٠?1?h?U3!@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelismJ??%?L??!?=[ǽ5@)ڐf??1??w??t @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 27.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9zeM?<9??I??(4?@Q}7?#?9Q@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	y?	??yp@y?	??yp@!y?	??yp@      ??!       "	??cx을@??cx을@!??cx을@*      ??!       2	?ǚ?A????ǚ?A???!?ǚ?A???:	??@?m?@@??@?m?@@!??@?m?@@B      ??!       J	??{b?????{b???!??{b???R      ??!       Z	??{b?????{b???!??{b???b      ??!       JGPUYzeM?<9??b q??(4?@y}7?#?9Q@?"3
UNET/conv2d_92/Conv2DConv2DGyO????!GyO????0"3
UNET/conv2d_86/Conv2DConv2D?m?j???!?E?I????0"3
UNET/conv2d_88/Conv2DConv2D?'>?ԟ?!?
h????0"b
7gradient_tape/UNET/conv2d_92/Conv2D/Conv2DBackpropInputConv2DBackpropInput?4un???!LWۧo??0"b
7gradient_tape/UNET/conv2d_88/Conv2D/Conv2DBackpropInputConv2DBackpropInput?/?(l,??!?1h`5???0"b
7gradient_tape/UNET/conv2d_85/Conv2D/Conv2DBackpropInputConv2DBackpropInput?b?? ܛ?!P~?z?p??0"b
7gradient_tape/UNET/conv2d_90/Conv2D/Conv2DBackpropInputConv2DBackpropInput?G?? ћ?!LG??????0"3
UNET/conv2d_90/Conv2DConv2D??Fq%ϛ?!a!?@?d??0"3
UNET/conv2d_85/Conv2DConv2D?'RÛ?!b??B????0"b
7gradient_tape/UNET/conv2d_86/Conv2D/Conv2DBackpropInputConv2DBackpropInput??\O?!O?'1j??0Q      Y@YDj??V?	@a??sHM0X@qb??????y=?g"f?"?

both?Your program is POTENTIALLY input-bound because 27.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Kepler)(: B 