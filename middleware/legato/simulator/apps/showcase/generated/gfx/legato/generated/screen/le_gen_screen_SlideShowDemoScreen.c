#include "gfx/legato/generated/screen/le_gen_screen_SlideShowDemoScreen.h"

// widget list for layer 0
static leWidget* root0;

leGradientWidget* GradientWidget6;
leImageSequenceWidget* ImageSequenceWidget1;
leButtonWidget* SlideshowHelpButton;
leButtonWidget* SlideShowHomeButton;
leLabelWidget* LabelWidget10;
leButtonWidget* SlideShowPrevButton;
leButtonWidget* SlideshowNextButton;
leButtonWidget* ButtonWidget21;
leButtonWidget* ButtonWidget22;
leImageWidget* SSStatusImageWidget;

// string list for this screen
static leTableString tableString_SlideShowDemo;
static leTableString tableString_msecs500;
static leTableString tableString_secs2;

static leBool showing = LE_FALSE;

leResult screenInit_SlideShowDemoScreen()
{
    return LE_SUCCESS;
}

leResult screenShow_SlideShowDemoScreen()
{
    if(showing == LE_TRUE)
        return LE_FAILURE;

    // initialize static strings
    leTableString_Constructor(&tableString_SlideShowDemo, string_SlideShowDemo);
    leTableString_Constructor(&tableString_msecs500, string_msecs500);
    leTableString_Constructor(&tableString_secs2, string_secs2);

    // layer 0
    root0 = leWidget_New();
    root0->fn->setPosition(root0, 0, 0);
    root0->fn->setSize(root0, 480, 320);
    root0->fn->setBackgroundType(root0, LE_WIDGET_BACKGROUND_NONE);
    root0->fn->setMargins(root0, 0, 0, 0, 0);

    GradientWidget6 = leGradientWidget_New();
    GradientWidget6->fn->setPosition(GradientWidget6, 0, 0);
    GradientWidget6->fn->setSize(GradientWidget6, 480, 320);
    GradientWidget6->fn->setScheme(GradientWidget6, &BackgroundGradientScheme);
    GradientWidget6->fn->setDirection(GradientWidget6, LE_DIRECTION_DOWN);
    root0->fn->addChild(root0, (leWidget*)GradientWidget6);

    ImageSequenceWidget1 = leImageSequenceWidget_New();
    ImageSequenceWidget1->fn->setPosition(ImageSequenceWidget1, 107, 41);
    ImageSequenceWidget1->fn->setSize(ImageSequenceWidget1, 279, 161);
    ImageSequenceWidget1->fn->setBackgroundType(ImageSequenceWidget1, LE_WIDGET_BACKGROUND_NONE);
    ImageSequenceWidget1->fn->setImageCount(ImageSequenceWidget1, 3);
    ImageSequenceWidget1->fn->setImage(ImageSequenceWidget1, 0, &USA);
    ImageSequenceWidget1->fn->setImage(ImageSequenceWidget1, 1, &MicrochipLogo);
    ImageSequenceWidget1->fn->setImage(ImageSequenceWidget1, 2, &NewHarmonyLogo);
    ImageSequenceWidget1->fn->play(ImageSequenceWidget1);
    ImageSequenceWidget1->fn->setRepeat(ImageSequenceWidget1, LE_TRUE);
    root0->fn->addChild(root0, (leWidget*)ImageSequenceWidget1);

    SlideshowHelpButton = leButtonWidget_New();
    SlideshowHelpButton->fn->setPosition(SlideshowHelpButton, 0, 260);
    SlideshowHelpButton->fn->setSize(SlideshowHelpButton, 60, 60);
    SlideshowHelpButton->fn->setBackgroundType(SlideshowHelpButton, LE_WIDGET_BACKGROUND_NONE);
    SlideshowHelpButton->fn->setBorderType(SlideshowHelpButton, LE_WIDGET_BORDER_NONE);
    SlideshowHelpButton->fn->setPressedImage(SlideshowHelpButton, &GFX_Help_60);
    SlideshowHelpButton->fn->setReleasedImage(SlideshowHelpButton, &GFX_Help_60);
    root0->fn->addChild(root0, (leWidget*)SlideshowHelpButton);

    SlideShowHomeButton = leButtonWidget_New();
    SlideShowHomeButton->fn->setPosition(SlideShowHomeButton, 421, 260);
    SlideShowHomeButton->fn->setSize(SlideShowHomeButton, 60, 60);
    SlideShowHomeButton->fn->setBackgroundType(SlideShowHomeButton, LE_WIDGET_BACKGROUND_NONE);
    SlideShowHomeButton->fn->setBorderType(SlideShowHomeButton, LE_WIDGET_BORDER_NONE);
    SlideShowHomeButton->fn->setPressedImage(SlideShowHomeButton, &GFX_Home_60x60);
    SlideShowHomeButton->fn->setReleasedImage(SlideShowHomeButton, &GFX_Home_60x60);
    root0->fn->addChild(root0, (leWidget*)SlideShowHomeButton);

    LabelWidget10 = leLabelWidget_New();
    LabelWidget10->fn->setPosition(LabelWidget10, 10, 6);
    LabelWidget10->fn->setSize(LabelWidget10, 251, 25);
    LabelWidget10->fn->setScheme(LabelWidget10, &whiteScheme);
    LabelWidget10->fn->setBackgroundType(LabelWidget10, LE_WIDGET_BACKGROUND_NONE);
    LabelWidget10->fn->setString(LabelWidget10, (leString*)&tableString_SlideShowDemo);
    root0->fn->addChild(root0, (leWidget*)LabelWidget10);

    SlideShowPrevButton = leButtonWidget_New();
    SlideShowPrevButton->fn->setPosition(SlideShowPrevButton, 0, 90);
    SlideShowPrevButton->fn->setSize(SlideShowPrevButton, 50, 74);
    SlideShowPrevButton->fn->setBackgroundType(SlideShowPrevButton, LE_WIDGET_BACKGROUND_NONE);
    SlideShowPrevButton->fn->setBorderType(SlideShowPrevButton, LE_WIDGET_BORDER_NONE);
    SlideShowPrevButton->fn->setPressedImage(SlideShowPrevButton, &GFX_ArrowLeft_20x60);
    SlideShowPrevButton->fn->setReleasedImage(SlideShowPrevButton, &GFX_ArrowLeft_20x60);
    root0->fn->addChild(root0, (leWidget*)SlideShowPrevButton);

    SlideshowNextButton = leButtonWidget_New();
    SlideshowNextButton->fn->setPosition(SlideshowNextButton, 430, 90);
    SlideshowNextButton->fn->setSize(SlideshowNextButton, 49, 65);
    SlideshowNextButton->fn->setBackgroundType(SlideshowNextButton, LE_WIDGET_BACKGROUND_NONE);
    SlideshowNextButton->fn->setBorderType(SlideshowNextButton, LE_WIDGET_BORDER_NONE);
    SlideshowNextButton->fn->setPressedImage(SlideshowNextButton, &GFX_ArrowRight_20x60);
    SlideshowNextButton->fn->setReleasedImage(SlideshowNextButton, &GFX_ArrowRight_20x60);
    root0->fn->addChild(root0, (leWidget*)SlideshowNextButton);

    ButtonWidget21 = leButtonWidget_New();
    ButtonWidget21->fn->setPosition(ButtonWidget21, 261, 220);
    ButtonWidget21->fn->setSize(ButtonWidget21, 99, 38);
    ButtonWidget21->fn->setToggleable(ButtonWidget21, LE_TRUE);
    ButtonWidget21->fn->setString(ButtonWidget21, (leString*)&tableString_msecs500);
    ButtonWidget21->fn->setPressedImage(ButtonWidget21, &GFX_Stop_30x30);
    ButtonWidget21->fn->setReleasedImage(ButtonWidget21, &GFX_FF_30x30);
    root0->fn->addChild(root0, (leWidget*)ButtonWidget21);

    ButtonWidget22 = leButtonWidget_New();
    ButtonWidget22->fn->setPosition(ButtonWidget22, 138, 220);
    ButtonWidget22->fn->setSize(ButtonWidget22, 92, 37);
    ButtonWidget22->fn->setToggleable(ButtonWidget22, LE_TRUE);
    ButtonWidget22->fn->setString(ButtonWidget22, (leString*)&tableString_secs2);
    ButtonWidget22->fn->setPressedImage(ButtonWidget22, &GFX_Stop_30x30);
    ButtonWidget22->fn->setReleasedImage(ButtonWidget22, &GFX_Play_30x30);
    root0->fn->addChild(root0, (leWidget*)ButtonWidget22);

    SSStatusImageWidget = leImageWidget_New();
    SSStatusImageWidget->fn->setPosition(SSStatusImageWidget, 349, 10);
    SSStatusImageWidget->fn->setSize(SSStatusImageWidget, 20, 20);
    SSStatusImageWidget->fn->setBackgroundType(SSStatusImageWidget, LE_WIDGET_BACKGROUND_NONE);
    SSStatusImageWidget->fn->setImage(SSStatusImageWidget, &GFX_Pause_Pink_20x20);
    root0->fn->addChild(root0, (leWidget*)SSStatusImageWidget);

    leAddRootWidget(root0, 0);

    showing = LE_TRUE;

    return LE_SUCCESS;
}

void screenUpdate_SlideShowDemoScreen()
{
}

void screenHide_SlideShowDemoScreen()
{
    leRemoveRootWidget(root0, 0);

    leWidget_Delete(root0);

    root0 = NULL;

    GradientWidget6 = NULL;
    ImageSequenceWidget1 = NULL;
    SlideshowHelpButton = NULL;
    SlideShowHomeButton = NULL;
    LabelWidget10 = NULL;
    SlideShowPrevButton = NULL;
    SlideshowNextButton = NULL;
    ButtonWidget21 = NULL;
    ButtonWidget22 = NULL;
    SSStatusImageWidget = NULL;

    tableString_SlideShowDemo.fn->destructor(&tableString_SlideShowDemo);
    tableString_msecs500.fn->destructor(&tableString_msecs500);
    tableString_secs2.fn->destructor(&tableString_secs2);
    showing = LE_FALSE;
}

void screenDestroy_SlideShowDemoScreen()
{

}

leWidget* screenGetRoot_SlideShowDemoScreen(uint32_t lyrIdx)
{
    if(lyrIdx >= LE_LAYER_COUNT)
        return NULL;

    switch(lyrIdx)
    {
        case 0:
        {
            return root0;
        }
        default:
        {
            return NULL;
        }
    }
}
