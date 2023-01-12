.class Lazun/khang/slidingpuzzleaz/AppActivity$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->hideAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 131
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setEnabled(Z)V

    .line 133
    :cond_0
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 134
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 135
    :cond_1
    return-void
.end method
