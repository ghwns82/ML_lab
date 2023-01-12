.class Lazun/khang/slidingpuzzleaz/AppActivity$4;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->loadInterstitial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$interAdId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$4;->val$interAdId:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$3(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$3(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$4;->val$interAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-static {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$3(Lazun/khang/slidingpuzzleaz/AppActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$2()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 183
    return-void
.end method
