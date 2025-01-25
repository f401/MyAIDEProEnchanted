.class public final Lcom/google/android/gms/ads/j;
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

.field public static final enum Hw:I = 0x4

.field public static final enum j6:I = 0x1

.field private static final v5:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/j;->v5:[I

    return-void
.end method
