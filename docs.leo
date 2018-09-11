<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="josephorr.20180907154621.1" a="E"><vh>[Formio.js Form Renderer](README.md)</vh>
<v t="josephorr.20180908090057.1" a="E"><vh>Source Files</vh>
<v t="josephorr.20180907165357.1"><vh>@clean src/simple.html</vh>
<v t="josephorr.20180907165423.1" a="E"><vh>&lt;html&gt;</vh>
<v t="josephorr.20180907165423.2" a="E"><vh>&lt;head&gt;</vh>
<v t="josephorr.20180907165423.3"><vh>bootstrap style link</vh></v>
<v t="josephorr.20180907165423.4"><vh>formio style link</vh></v>
<v t="josephorr.20180907170852.1"><vh>formio library link</vh></v>
<v t="josephorr.20180907165423.5"><vh>page style</vh></v>
<v t="josephorr.20180907165423.6" a="E"><vh>The form script tag</vh>
<v t="josephorr.20180908082728.1" a="E"><vh>onload</vh>
<v t="josephorr.20180908082939.1"><vh>&lt;&lt; create the form &gt;&gt;</vh></v>
<v t="josephorr.20180908083431.1"><vh>&lt;&lt; register form events &gt;&gt;</vh></v>
</v>
</v>
</v>
<v t="josephorr.20180907165423.7"><vh>&lt;body&gt;</vh></v>
</v>
</v>
<v t="josephorr.20180910210054.1"><vh>@clean src/kitchen-sink.html</vh>
<v t="josephorr.20180910210227.1" a="E"><vh>&lt;html&gt;</vh>
<v t="josephorr.20180910210227.2" a="E"><vh>&lt;head&gt;</vh>
<v t="josephorr.20180910210227.4"><vh>formio stylesheet</vh></v>
<v t="josephorr.20180910210227.7"><vh>page css</vh></v>
<v t="josephorr.20180910210227.3"><vh>bootstrap css</vh></v>
<v t="josephorr.20180910210227.6"><vh>jquery script link</vh></v>
<v t="josephorr.20180910210227.5"><vh>formio script link</vh></v>
<v t="josephorr.20180910210227.8" a="E"><vh>page script tag</vh>
<v t="josephorr.20180910210655.1"><vh>&lt;&lt; onload &gt;&gt;</vh></v>
</v>
</v>
<v t="josephorr.20180910210227.9"><vh>&lt;body&gt;</vh></v>
</v>
</v>
</v>
<v t="josephorr.20180907154643.1"><vh>[Simple Example](src/simple.html)</vh></v>
<v t="josephorr.20180910211339.1"><vh>[Kithen Sink](src/kitchen-sink.html)</vh></v>
<v t="josephorr.20180908090152.1"><vh>More Info</vh>
<v t="josephorr.20180908090341.1"><vh>[License](LICENSE.txt)</vh></v>
<v t="josephorr.20180908121552.1"><vh>This Documentation</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="josephorr.20180907154621.1"></t>
<t tx="josephorr.20180907154643.1"></t>
<t tx="josephorr.20180907165357.1">@language html
@others
@doc This is the start of a Leo outline. Directives (start with "@") will not be written to the source file. Click on a child node to start navigating the source file.
</t>
<t tx="josephorr.20180907165423.1">@language htmlsource
&lt;html&gt;
    @others
&lt;/html&gt;</t>
<t tx="josephorr.20180907165423.2">&lt;head&gt;
    @others
&lt;/head&gt;</t>
<t tx="josephorr.20180907165423.3">&lt;link 
  rel='stylesheet' 
  href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'&gt;
@others


</t>
<t tx="josephorr.20180907165423.4">&lt;link 
  rel='stylesheet' 
  href='https://unpkg.com/formiojs@latest/dist/formio.full.min.css'&gt;
@others

</t>
<t tx="josephorr.20180907165423.5">&lt;style type="text/css"&gt;
    #formio {
        margin: 60px;
    }
&lt;/style&gt;
</t>
<t tx="josephorr.20180907165423.6">&lt;script type='text/javascript'&gt;
@others
&lt;/script&gt;
</t>
<t tx="josephorr.20180907165423.7">&lt;body&gt;
&lt;div id='formio'&gt;&lt;/div&gt;
&lt;/body&gt;
</t>
<t tx="josephorr.20180907170852.1">&lt;script 
  src='https://unpkg.com/formiojs@latest/dist/formio.full.min.js'&gt;
&lt;/script&gt;</t>
<t tx="josephorr.20180908082728.1">@language javascript
window.onload = function() {
  Formio.createForm(
    &lt;&lt; create the form &gt;&gt;
  ).then(form =&gt; {
    &lt;&lt; register form events &gt;&gt;
  })
}</t>
<t tx="josephorr.20180908082939.1">document.getElementById('formio'),
{
    components: [
      {
        type: 'textfield',
        key: 'firstName',
        label: 'First Name',
        placeholder: 'Enter your first name.',
        input: true
      },
      {
        type: 'textfield',
        key: 'lastName',
        label: 'Last Name',
        placeholder: 'Enter your last name',
        input: true
      },
      {
        type: 'button',
        action: 'submit',
        label: 'Submit',
        theme: 'primary'
      }
    ]
},
{
  hooks: {
     beforeSubmit: (submission, next) =&gt; {
       alert('Before Submit: \n\n' + JSON.stringify(submission, null, 2))
       next()
     }
  }
}</t>
<t tx="josephorr.20180908083431.1">form.on('submit', submission =&gt; {
  alert('The form was just submitted!\n\n' + JSON.stringify(submission, null, 2))
  form.emit('submitDone', submission)
})
form.on('submitDone', submission =&gt; {
  alert('Done submitting form.')
})
form.on('change', changed =&gt; {
  console.log('Form was changed', changed);
})
form.on('error', errors =&gt; {
  alert('We have errors')
  console.log(errors)
})</t>
<t tx="josephorr.20180908090057.1">This node contains a couple of example source files broken down into small chunks.

This file can be directly edited with the Leo Editor and the source files will be updated on save.</t>
<t tx="josephorr.20180908090152.1"></t>
<t tx="josephorr.20180908090341.1"></t>
<t tx="josephorr.20180908121552.1">@language md

This document was created with the open source [Leo Editor](http://www.leoeditor.com) and 
is displayed on this site with [Leo Vue](https://kaleguy.github.io/leovue).

Leo is a code and document outliner, among other things. For example, 
* Outline a source file (see &lt;&lt;src/simple.html&gt;&gt; for an example.
* Organize all of your files and documentation into outlines

A single content item in a Leo outline can be placed on multiple nodes, making a Leo outline 
considerably more powerful than the code folding feature of most IDE's. In effect, a single Leo outline 
can provide multiple outline views of a target document.
The Leo Editor updates node 
content in outlines as it is changed in other editors, so Leo can be used alongside any other IDE.

This documentation was made from a single Leo file displayed with LeoVue. Some nodes on the Leo 
file point to other files such as code files or markdown files, causing LeoVue to load these files 
into the appropriate chosen node. This makes it possible to provide a site with complete documentation for a 
code project, including the actual code described with a multi-view outline.</t>
<t tx="josephorr.20180910210054.1">@others
@language html
</t>
<t tx="josephorr.20180910210227.1">&lt;html&gt;
    @others
&lt;/html&gt;
</t>
<t tx="josephorr.20180910210227.2">&lt;head&gt;
    @others
&lt;/head&gt;</t>
<t tx="josephorr.20180910210227.3">&lt;link 
    rel='stylesheet' 
    href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'&gt;

</t>
<t tx="josephorr.20180910210227.4">&lt;link 
  rel='stylesheet' 
  href='https://unpkg.com/formiojs@latest/dist/formio.full.min.css'&gt;

</t>
<t tx="josephorr.20180910210227.5">&lt;script 
  src='https://unpkg.com/formiojs@latest/dist/formio.full.min.js'&gt;
&lt;/script&gt;
</t>
<t tx="josephorr.20180910210227.6">&lt;script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"&gt;
&lt;/script&gt;
</t>
<t tx="josephorr.20180910210227.7">&lt;style type="text/css"&gt;
    #formio {
        margin: 60px;
    }
&lt;/style&gt;
</t>
<t tx="josephorr.20180910210227.8">&lt;script type='text/javascript'&gt;
  &lt;&lt; onload &gt;&gt;
&lt;/script&gt;
</t>
<t tx="josephorr.20180910210227.9">&lt;body&gt;
  &lt;div id='formio'&gt;&lt;/div&gt;
&lt;/body&gt;
</t>
<t tx="josephorr.20180910210655.1">@language javascript

window.onload = function() {
  function createForm({components}) {
    Formio.createForm(
      document.getElementById('formio'),
      {
        components: components
      },
      {
        hooks: {
          beforeSubmit: (submission, next) =&gt; {
            alert('Before Submit: \n\n' + JSON.stringify(submission, null, 2))
            next()
          }
        }
      }

    ).then(form =&gt; {
      form.on('submit', submission =&gt; {
        alert('The form was just submitted!\n\n' + JSON.stringify(submission, null, 2))
        form.emit('submitDone', submission)
      })
      form.on('submitDone', submission =&gt; {
        alert('Done submitting form.')
      })
      form.on('change', changed =&gt; {
        console.log('Form was changed', changed);
      })
      form.on('error', errors =&gt; {
        alert('We have errors')
        console.log(errors)
      })

    })
  }
  $.get('kitchen-sink.json').then(createForm)
}</t>
<t tx="josephorr.20180910211339.1"></t>
</tnodes>
</leo_file>
