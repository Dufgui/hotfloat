# Dashing Hotfloat Widget

Hotfloat Widget for the Dashing dashboard

##About

This widget is a fusion of the hotness widget and the number widget and deal with float.

You neet to survey a pourcentage with evolution and color, this widget id for you.

##Installation

create a hotfloat directory in your widget directory and copy in it this files.

##Usage

	<li data-row="1" data-col="1" data-sizex="1" data-sizey="1" data-height="312px">
	      <div data-id="myId" data-view="Hotfloat" data-title="the title" data-cool="95" data-warm="90" data-suffix="%" data-moreinfo="Ratio de paiements OK / 10min"></div>
	      <i class="icon-check icon-background"></i>
	</li>

##Fields

### Required

* __data-id__: Like all widgets, you must include an identifier so that your jobs
can update the value.
* __data-cool__: Anything __below__ (if cool is under warm value, else __above__) this value will show the 'cold' colour. It should
be set high enough to include all the 'good' range of value for this metric.
* __data-warm__: Anything __above__ (if cool is under warm value, else __below__) this value will show the 'hot' colour. It
should be set just below the 'bad' range of value for this metric - ie. those
that need attention!

### Not Required

* __data-title__: Optional title to show in the widget box (above the value).
* __data-prefix__: Optional prefix to the value.
* __data-suffix__: Optional suffix to the value.
* __data-moreinfo__: Optional more information on the value.