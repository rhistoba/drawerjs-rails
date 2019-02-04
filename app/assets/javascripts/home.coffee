# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  drawerPlugins = [
    'Pencil',
    'Eraser',
    'Text',
    'Line',
    'ArrowOneSide',
    'ArrowTwoSide',
    'Triangle',
    'Rectangle',
    'Circle',
    'Image',
    'BackgroundImage',
    'Polygon',
    'ImageCrop',
    'Color',
    'ShapeBorder',
    'BrushSize',
    'OpacityOption',
    'LineWidth',
    'StrokeWidth',
    'Resize',
    'ShapeContextMenu',
    'CloseButton',
    'OvercanvasPopup',
    'OpenPopupButton',
    'MinimizeButton',
    'ToggleVisibilityButton',
    'MovableFloatingMode',
    'FullscreenModeButton',
    'Zoom',
    'TextLineHeight',
    'TextAlign',
    'TextFontFamily',
    'TextFontSize',
    'TextFontWeight',
    'TextFontStyle',
    'TextDecoration',
    'TextColor',
    'TextBackgroundColor'
  ]

  canvas = new DrawerJs.Drawer(null, {
    plugins: drawerPlugins,
    pluginsConfig: {
      Image: {
        scaleDownLargeImage: true,
        maxImageSizeKb: 10240,
        cropIsActive: true
      },
      BackgroundImage: {
        scaleDownLargeImage: true,
        maxImageSizeKb: 10240,
        imagePosition: 'center',
        acceptedMIMETypes: ['image/jpeg', 'image/png', 'image/gif'] ,
        dynamicRepositionImage: true,
        dynamicRepositionImageThrottle: 100,
        cropIsActive: false
      },
      Text: {
        editIconMode : false,
        editIconSize : 'large',
        defaultValues : {
          fontSize: 72,
          lineHeight: 2,
          textFontWeight: 'bold'
        },
        predefined: {
          fontSize: [8, 12, 14, 16, 32, 40, 72],
          lineHeight: [1, 2, 3, 4, 6]
        }
      },
      Zoom: {
        enabled: true,
        showZoomTooltip: true,
        useWheelEvents: true,
        zoomStep: 1.05,
        defaultZoom: 1,
        maxZoom: 32,
        minZoom: 1,
        smoothnessOfWheel: 0,
        enableMove: true,
        enableWhenNoActiveTool: true,
        enableButton: true
      }
    },
    toolbars: {
      drawingTools: {
        position: 'top',
        positionType: 'inside',
        customAnchorSelector: '#custom-toolbar-here',
        compactType: 'scrollable',
        hidden: false,
        toggleVisibilityButton: false,
        fullscreenMode: {
          position: 'top',
          hidden: false,
          toggleVisibilityButton: false
        }
      },
      toolOptions: {
        position: 'bottom',
        positionType: 'inside',
        compactType: 'popup',
        hidden: false,
        toggleVisibilityButton: false,
        fullscreenMode: {
          position: 'bottom',
          compactType: 'popup',
          hidden: false,
          toggleVisibilityButton: false
        }
      },
      settings: {
        position: 'right',
        positionType: 'inside',
        compactType: 'scrollable',
        hidden: false,
        toggleVisibilityButton: false,
        fullscreenMode: {
          position: 'right',
          hidden: false,
          toggleVisibilityButton: false
        }
      }
    },
  }, 600, 200)

  $('#drawerjs-canvas').append(canvas.getHtml())
  canvas.onInsert()
