.class Lazun/khang/slidingpuzzleaz/AppActivity$8;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->showRatePopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lazun/khang/slidingpuzzleaz/AppActivity;


# direct methods
.method constructor <init>(Lazun/khang/slidingpuzzleaz/AppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$8;->this$0:Lazun/khang/slidingpuzzleaz/AppActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 249
    const-string v0, "kTest"

    const-string v1, "No Thanks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->stopRatingReminder(Z)V

    .line 251
    return-void
.end method
