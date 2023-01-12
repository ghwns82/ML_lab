.class Lazun/khang/slidingpuzzleaz/AppActivity$15;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazun/khang/slidingpuzzleaz/AppActivity;->submitPlayTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$incremental1:Ljava/lang/String;

.field private final synthetic val$incremental2:Ljava/lang/String;

.field private final synthetic val$incremental3:Ljava/lang/String;

.field private final synthetic val$incremental4:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental1:Ljava/lang/String;

    iput-object p2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental2:Ljava/lang/String;

    iput-object p3, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental3:Ljava/lang/String;

    iput-object p4, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental4:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 439
    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v0

    invoke-virtual {v0}, Lazun/khang/slidingpuzzleaz/AppActivity;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-virtual {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental1:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 441
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-virtual {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental2:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 442
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-virtual {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental3:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 443
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lazun/khang/slidingpuzzleaz/AppActivity;->access$0()Lazun/khang/slidingpuzzleaz/AppActivity;

    move-result-object v1

    invoke-virtual {v1}, Lazun/khang/slidingpuzzleaz/AppActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lazun/khang/slidingpuzzleaz/AppActivity$15;->val$incremental4:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    .line 445
    :cond_0
    return-void
.end method
