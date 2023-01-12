.class public Lorg/cocos2dx/lib/Cocos2dxVideoView;
.super Landroid/view/SurfaceView;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    }
.end annotation


# static fields
.field private static final EVENT_COMPLETED:I = 0x3

.field private static final EVENT_PAUSED:I = 0x1

.field private static final EVENT_PLAYING:I = 0x0

.field private static final EVENT_STOPPED:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isAssetRouse:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mKeepRatio:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedResume:Z

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field protected mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field protected mViewHeight:I

.field protected mViewLeft:I

.field private mViewTag:I

.field protected mViewTop:I

.field protected mViewWidth:I

.field protected mVisibleHeight:I

.field protected mVisibleLeft:I

.field protected mVisibleTop:I

.field protected mVisibleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "VideoView"

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    .line 61
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 62
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 65
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 66
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 68
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 78
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    .line 80
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 81
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 82
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 83
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 85
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 86
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 87
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 88
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 90
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 167
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    .line 208
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 209
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 316
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 360
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 371
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 397
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 421
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 476
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 517
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 95
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 96
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->initVideoView()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->initVideoView()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-string v0, "VideoView"

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    .line 61
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 62
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 65
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 66
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 68
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 78
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    .line 80
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 81
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 82
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 83
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 85
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 86
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 87
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 88
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 90
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 167
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    .line 208
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 209
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 316
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 360
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 371
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 397
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 421
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 476
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 517
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 110
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->initVideoView()V

    .line 112
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$10(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    return-object v0
.end method

.method static synthetic access$11(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    return v0
.end method

.method static synthetic access$12(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$14(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$15(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$16(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$17(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$4(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$5(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$6(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$7(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$8(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$9(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    return-void
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 186
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 187
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 188
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusable(Z)V

    .line 189
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusableInTouchMode(Z)V

    .line 190
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 191
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 192
    return-void
.end method

.method private openVideo()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 252
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    :cond_2
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v8, "i":Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "pause"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    invoke-direct {p0, v10}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    .line 276
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 277
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 278
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 279
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 280
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 281
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 283
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 284
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 285
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    .line 290
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 292
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 297
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v7

    .line 302
    .local v7, "ex":Ljava/io/IOException;
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    iput v9, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 304
    iput v9, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 305
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v11, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 260
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v8    # "i":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 294
    .restart local v8    # "i":Landroid/content/Intent;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 307
    :catch_1
    move-exception v7

    .line 308
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to open content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    iput v9, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 310
    iput v9, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 311
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v11, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 553
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 555
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 556
    if-eqz p1, :cond_0

    .line 557
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 560
    :cond_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 232
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    .line 233
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 234
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 235
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 236
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    .line 237
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->requestLayout()V

    .line 238
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->invalidate()V

    .line 239
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    return v0
.end method

.method public fixSize()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 324
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    if-eqz v1, :cond_3

    .line 325
    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    if-eqz v1, :cond_2

    .line 326
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 327
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 328
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 333
    :cond_0
    :goto_0
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 334
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 349
    :goto_1
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 351
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v0, "lParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 354
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 355
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void

    .line 329
    .end local v0    # "lParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 330
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 331
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_0

    .line 336
    :cond_2
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 337
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 338
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 339
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_1

    .line 343
    :cond_3
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 344
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 345
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 346
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_1
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 656
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 625
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 631
    :goto_0
    return v0

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 628
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 631
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 662
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 663
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 664
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    .line 665
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 116
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    if-nez v0, :cond_1

    .line 117
    :cond_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    .line 118
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    .line 122
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pause()V

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 200
    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->resume()V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 574
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 577
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 578
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 583
    :cond_0
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 584
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 139
    move v0, p1

    .line 140
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 141
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 143
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 164
    :goto_0
    return v0

    .line 148
    :sswitch_0
    move v0, p1

    .line 149
    goto :goto_0

    .line 156
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 157
    goto :goto_0

    .line 161
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public restart()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 614
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 616
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 617
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 618
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 620
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 605
    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 606
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 611
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 644
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setKeepRatio(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 320
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 321
    return-void
.end method

.method public setOnCompletionListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V
    .locals 0
    .param p1, "l"    # Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    .prologue
    .line 501
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    .line 502
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 514
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 515
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 490
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 491
    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 212
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 214
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 219
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setVideoRect(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 128
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 129
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 130
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 131
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 133
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 136
    :cond_0
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 225
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 226
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 171
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    .line 173
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 181
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 182
    return-void

    .line 177
    :cond_1
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 563
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 565
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 566
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 570
    :cond_0
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 571
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 587
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stopPlayback()V

    .line 590
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 595
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 244
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 246
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 247
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 249
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    .line 599
    return-void
.end method
