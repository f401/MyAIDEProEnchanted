.class public final Lcom/google/android/gms/internal/ads/Gl;
.super Lcom/google/android/gms/internal/ads/lE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/lE",
        "<",
        "Lcom/google/android/gms/internal/ads/nD;",
        ">;"
    }
.end annotation


# instance fields
.field private final QX:Lcom/google/android/gms/internal/ads/Rm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Rm",
            "<",
            "Lcom/google/android/gms/internal/ads/nD;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aM:Lcom/google/android/gms/internal/ads/cm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Rm",
            "<",
            "Lcom/google/android/gms/internal/ads/nD;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/Gl;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/Rm;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Rm",
            "<",
            "Lcom/google/android/gms/internal/ads/nD;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/ads/Hl;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/Hl;-><init>(Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/lE;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/XH;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Gl;->XL:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Gl;->QX:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v0, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Gl;->aM:Lcom/google/android/gms/internal/ads/cm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gl;->aM:Lcom/google/android/gms/internal/ads/cm;

    const-string v1, "GET"

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method protected final j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/wH;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/nD;",
            ")",
            "Lcom/google/android/gms/internal/ads/wH",
            "<",
            "Lcom/google/android/gms/internal/ads/nD;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pg;->j6(Lcom/google/android/gms/internal/ads/nD;)Lcom/google/android/gms/internal/ads/Ow;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wH;->j6(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Ow;)Lcom/google/android/gms/internal/ads/wH;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic j6(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/nD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gl;->aM:Lcom/google/android/gms/internal/ads/cm;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/nD;->FH:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/nD;->j6:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gl;->aM:Lcom/google/android/gms/internal/ads/cm;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cm;->j6([B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Gl;->QX:Lcom/google/android/gms/internal/ads/Rm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method
