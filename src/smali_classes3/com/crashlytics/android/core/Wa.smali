.class final Lcom/crashlytics/android/core/Wa;
.super Ljava/lang/Object;


# static fields
.field static final DW:I

.field static final FH:I

.field static final Hw:I

.field static final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v2

    sput v2, Lcom/crashlytics/android/core/Wa;->j6:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->DW:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->FH:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->Hw:I

    return-void
.end method

.method static j6(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
