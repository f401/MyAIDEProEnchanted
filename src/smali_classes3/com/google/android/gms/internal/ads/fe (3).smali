.class public final Lcom/google/android/gms/internal/ads/fe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ud;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Ud<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Xd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Xd<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/internal/ads/rd;

.field private final Hw:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Wd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Wd<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Xd;Lcom/google/android/gms/internal/ads/Wd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rd;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Xd<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/Wd<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fe;->FH:Lcom/google/android/gms/internal/ads/rd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fe;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fe;->DW:Lcom/google/android/gms/internal/ads/Xd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fe;->j6:Lcom/google/android/gms/internal/ads/Wd;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fe;)Lcom/google/android/gms/internal/ads/Wd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fe;->j6:Lcom/google/android/gms/internal/ads/Wd;

    return-object p0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/Qd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Hd;",
            "Lcom/google/android/gms/internal/ads/Qd;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/Rm<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->j6()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/m;->Ws:Lcom/google/android/gms/ads/internal/gmsg/e;

    new-instance v2, Lcom/google/android/gms/internal/ads/ie;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/ie;-><init>(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/e;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/f;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fe;->DW:Lcom/google/android/gms/internal/ads/Xd;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/Xd;->j6(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/fe;->Hw:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p2

    :try_start_2d
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    const-string p3, "Unable to invokeJavaScript"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    return-void

    :catchall_39
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    throw p2
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/Qd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/fe;->j6(Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/Qd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Rm;)V

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fe;->FH:Lcom/google/android/gms/internal/ads/rd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rd;->DW(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/ge;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/ge;-><init>(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Hd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/he;-><init>(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hd;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    return-object v0
.end method

.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "TO;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fe;->DW(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method
