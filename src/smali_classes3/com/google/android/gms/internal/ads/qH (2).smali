.class public final Lcom/google/android/gms/internal/ads/qH;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static j6:Lcom/google/android/gms/internal/ads/qH;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Zl;

.field private final FH:Lcom/google/android/gms/internal/ads/iH;

.field private final Hw:Ljava/lang/String;

.field private final VH:Lcom/google/android/gms/internal/ads/m;

.field private final Zo:Lcom/google/android/gms/internal/ads/l;

.field private final gn:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final u7:Ljava/util/Random;

.field private final v5:Lcom/google/android/gms/internal/ads/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/qH;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    return-void
.end method

.method protected constructor <init>()V
    .registers 13

    new-instance v1, Lcom/google/android/gms/internal/ads/Zl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Zl;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/iH;

    new-instance v3, Lcom/google/android/gms/internal/ads/aH;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/aH;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/_G;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/_G;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/wI;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/wI;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/Eb;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/Eb;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/nj;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/nj;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/Lj;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/Lj;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/dg;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/dg;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/Fb;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/Fb;-><init>()V

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/iH;-><init>(Lcom/google/android/gms/internal/ads/aH;Lcom/google/android/gms/internal/ads/_G;Lcom/google/android/gms/internal/ads/wI;Lcom/google/android/gms/internal/ads/Eb;Lcom/google/android/gms/internal/ads/nj;Lcom/google/android/gms/internal/ads/Lj;Lcom/google/android/gms/internal/ads/dg;Lcom/google/android/gms/internal/ads/Fb;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/k;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/k;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/l;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/l;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/m;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/m;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/Zl;->FH()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbbi;

    const v0, 0xda3360

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0, v2}, Lcom/google/android/gms/internal/ads/zzbbi;-><init>(IIZ)V

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    move-object v0, p0

    move-object v2, v11

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/qH;-><init>(Lcom/google/android/gms/internal/ads/Zl;Lcom/google/android/gms/internal/ads/iH;Lcom/google/android/gms/internal/ads/k;Lcom/google/android/gms/internal/ads/l;Lcom/google/android/gms/internal/ads/m;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/util/Random;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/Zl;Lcom/google/android/gms/internal/ads/iH;Lcom/google/android/gms/internal/ads/k;Lcom/google/android/gms/internal/ads/l;Lcom/google/android/gms/internal/ads/m;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/util/Random;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qH;->DW:Lcom/google/android/gms/internal/ads/Zl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qH;->FH:Lcom/google/android/gms/internal/ads/iH;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qH;->v5:Lcom/google/android/gms/internal/ads/k;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qH;->Zo:Lcom/google/android/gms/internal/ads/l;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/qH;->VH:Lcom/google/android/gms/internal/ads/m;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/qH;->Hw:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/qH;->gn:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/qH;->u7:Ljava/util/Random;

    return-void
.end method

.method public static DW()Lcom/google/android/gms/internal/ads/iH;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->FH:Lcom/google/android/gms/internal/ads/iH;

    return-object v0
.end method

.method public static FH()Lcom/google/android/gms/internal/ads/l;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->Zo:Lcom/google/android/gms/internal/ads/l;

    return-object v0
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/k;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->v5:Lcom/google/android/gms/internal/ads/k;

    return-object v0
.end method

.method public static VH()Lcom/google/android/gms/internal/ads/zzbbi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->gn:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object v0
.end method

.method public static Zo()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public static gn()Ljava/util/Random;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->u7:Ljava/util/Random;

    return-object v0
.end method

.method public static j6()Lcom/google/android/gms/internal/ads/Zl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->DW:Lcom/google/android/gms/internal/ads/Zl;

    return-object v0
.end method

.method public static v5()Lcom/google/android/gms/internal/ads/m;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qH;->j6:Lcom/google/android/gms/internal/ads/qH;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qH;->VH:Lcom/google/android/gms/internal/ads/m;

    return-object v0
.end method
