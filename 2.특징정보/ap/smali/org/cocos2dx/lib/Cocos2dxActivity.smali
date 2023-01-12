.class public abstract Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Landroid/app/Activity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static framelayout:Landroid/widget/FrameLayout;

.field private static sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;


# instance fields
.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field private mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

.field private mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 157
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 41
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method private static final isAndroidEmulator()Z
    .locals 6

    .prologue
    .line 203
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 204
    .local v1, "model":Ljava/lang/String;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "model="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 206
    .local v2, "product":Ljava/lang/String;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "product="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "isEmulator":Z
    if-eqz v2, :cond_0

    .line 209
    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sdk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 211
    :cond_0
    :goto_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEmulator="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v0

    .line 209
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 10

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0x8

    .line 165
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 168
    .local v9, "framelayout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    .line 169
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 174
    const/4 v0, -0x2

    .line 173
    invoke-direct {v8, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 175
    .local v8, "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 176
    .local v7, "edittext":Lorg/cocos2dx/lib/Cocos2dxEditText;
    invoke-virtual {v7, v8}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 185
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isAndroidEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 192
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 195
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setContentView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getOnActivityResultListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    return-void

    .line 149
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 150
    .local v0, "listener":Landroid/preference/PreferenceManager$OnActivityResultListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 90
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->sContext:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 91
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    .line 93
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/app/Activity;)V

    .line 95
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 96
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->framelayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mVideoHelper:Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 99
    :cond_0
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLoadNativeLibraries()V
    .locals 7

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 66
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_1
    const-string v4, "android.app.lib_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "libName":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "libName":Ljava/lang/String;
    :goto_0
    return-void

    .line 70
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 74
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 76
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 122
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 114
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 115
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 128
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pContent"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 135
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 136
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 137
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Lorg/cocos2dx/lib/Cocos2dxHandler;

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method
