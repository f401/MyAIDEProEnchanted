.class public final Lcom/google/android/gms/internal/ads/EE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/OE;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Lcom/google/android/gms/ads/internal/gmsg/zzaa;

.field private Hw:Lcom/google/android/gms/internal/ads/Hd;

.field private final VH:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/sE;

.field private final u7:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sE;Lcom/google/android/gms/internal/ads/rd;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/JE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/JE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->Zo:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance v0, Lcom/google/android/gms/internal/ads/KE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/KE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance v0, Lcom/google/android/gms/internal/ads/LE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/LE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->gn:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance v0, Lcom/google/android/gms/internal/ads/NE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/NE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->u7:Lcom/google/android/gms/ads/internal/gmsg/B;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EE;->j6:Lcom/google/android/gms/internal/ads/sE;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/EE;->DW:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    invoke-direct {v0, p3}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->FH:Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/rd;->DW(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Hd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/EE;->Hw:Lcom/google/android/gms/internal/ads/Hd;

    new-instance p3, Lcom/google/android/gms/internal/ads/FE;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/FE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/GE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/GE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/sE;->v5:Lcom/google/android/gms/internal/ads/qE;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qE;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Core JS tracking ad unit: "

    if-eqz p2, :cond_55

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5a

    :cond_55
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/EE;)Lcom/google/android/gms/ads/internal/gmsg/zzaa;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/EE;->FH:Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/EE;)Lcom/google/android/gms/internal/ads/sE;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/EE;->j6:Lcom/google/android/gms/internal/ads/sE;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/EE;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/EE;->v5:Z

    return p1
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->Hw:Lcom/google/android/gms/internal/ads/Hd;

    new-instance v1, Lcom/google/android/gms/internal/ads/IE;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/IE;-><init>(Lcom/google/android/gms/internal/ads/EE;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Vm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Vm;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EE;->Hw:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/Qd;)V
    .registers 4

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->gn:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->Zo:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->DW:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->u7:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_28
    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/Qd;)V
    .registers 4

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->Zo:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->VH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->gn:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->DW:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EE;->u7:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_28
    return-void
.end method

.method public final j6(Lorg/json/JSONObject;Z)V
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/EE;->Hw:Lcom/google/android/gms/internal/ads/Hd;

    new-instance v0, Lcom/google/android/gms/internal/ads/HE;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/HE;-><init>(Lcom/google/android/gms/internal/ads/EE;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Vm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Vm;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    return-void
.end method

.method public final j6()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/EE;->v5:Z

    return v0
.end method
