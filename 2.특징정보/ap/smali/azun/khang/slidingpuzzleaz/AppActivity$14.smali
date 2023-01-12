.class Lazun/khang/slidingpuzzleaz/AppActivity$14;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->unlockGooglePlayAchievement(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$achievementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$14;->val$achievementId:Ljava/lang/String;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 423
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-virtual {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-virtual {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$14;->val$achievementId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 426
    :cond_0
    return-void
.end method
