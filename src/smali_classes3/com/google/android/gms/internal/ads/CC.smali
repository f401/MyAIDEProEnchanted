.class public abstract Lcom/google/android/gms/internal/ads/CC;
.super Ljava/lang/Object;


# instance fields
.field private final DW:J

.field public final FH:Lcom/google/android/gms/internal/ads/zzfs;

.field public final Hw:Ljava/lang/String;

.field private final VH:Lcom/google/android/gms/internal/ads/BC;

.field public final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zC;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/lang/String;

.field public final v5:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/GC;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zC;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CC;->j6:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/CC;->DW:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/CC;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/CC;->Hw:Ljava/lang/String;

    if-nez p7, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_16

    :cond_12
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CC;->Zo:Ljava/util/List;

    invoke-virtual {p6, p0}, Lcom/google/android/gms/internal/ads/GC;->j6(Lcom/google/android/gms/internal/ads/CC;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CC;->VH:Lcom/google/android/gms/internal/ads/BC;

    iget-wide p2, p6, Lcom/google/android/gms/internal/ads/GC;->FH:J

    const-wide/32 p4, 0xf4240

    iget-wide p6, p6, Lcom/google/android/gms/internal/ads/GC;->DW:J

    invoke-static/range {p2 .. p7}, Lcom/google/android/gms/internal/ads/TD;->j6(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/CC;->v5:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/List;Lcom/google/android/gms/internal/ads/DC;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/ads/CC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abstract FH()Ljava/lang/String;
.end method

.method public final Hw()Lcom/google/android/gms/internal/ads/BC;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CC;->VH:Lcom/google/android/gms/internal/ads/BC;

    return-object v0
.end method

.method public abstract Zo()Lcom/google/android/gms/internal/ads/qC;
.end method

.method public abstract v5()Lcom/google/android/gms/internal/ads/BC;
.end method
