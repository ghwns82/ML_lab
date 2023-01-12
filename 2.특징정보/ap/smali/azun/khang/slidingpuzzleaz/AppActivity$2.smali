.class Lazun/khang/slidingpuzzleaz/AppActivity$2;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->showAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$adUnit:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$2;->val$adUnit:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$2;->val$adUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$2()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 150
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 152
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setEnabled(Z)V

    .line 154
    :cond_2
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 155
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-static {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$1(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method
