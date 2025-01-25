.class final Lcom/google/android/gms/internal/ads/tk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum DW:I = 0x2

.field public static final enum FH:I = 0x3

.field private static final Hw:[I

.field public static final enum j6:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/tk;->Hw:[I

    return-void
.end method
