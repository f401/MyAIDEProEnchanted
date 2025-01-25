.class public final Lcom/google/android/gms/internal/ads/AC;
.super Ljava/lang/Object;


# instance fields
.field public final DW:J

.field public final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/vC;",
            ">;"
        }
    .end annotation
.end field

.field public final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/vC;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AC;->j6:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/AC;->DW:J

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AC;->FH:Ljava/util/List;

    return-void
.end method
