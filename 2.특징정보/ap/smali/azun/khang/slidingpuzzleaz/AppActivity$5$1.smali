.class Lazun/khang/slidingpuzzleaz/AppActivity$5$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lazun/khang/slidingpuzzleaz/AppActivity$5;


# direct methods
.method constructor <init>(Lazun/khang/slidingpuzzleaz/AppActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$5$1;->this$1:Lazun/khang/slidingpuzzleaz/AppActivity$5;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->exitApplication()V

    .line 200
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-virtual {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->deleteScreenshotForSharing()V

    .line 201
    return-void
.end method
