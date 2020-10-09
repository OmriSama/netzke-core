{
  init: function(cmp){
    this.cmp = cmp;
    // add a button to parent's toolbar
    cmp.addDocked({
      dock: 'bottom',
      xtype: 'toolbar',
      items: [this.actions.updateTitle]
    });
  },

  netzkeOnUpdateTitle: function(){
    this.cmp.setTitle('Title updated by PluginWithActions');
  }
}
