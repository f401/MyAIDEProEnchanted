.class final Lcom/crashlytics/android/core/Wa;
.super Ljava/lang/Object;


# static fields
.field static final DW:I

.field static final FH:I

.field static final Hw:I

.field static final j6:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->j6:I

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->DW:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->FH:I

    invoke-static {v3, v2}, Lcom/crashlytics/android/core/Wa;->j6(II)I

    move-result v0

    sput v0, Lcom/crashlytics/android/core/Wa;->Hw:I

    return-void
.end method

.method static j6(II)I
    .registers 3

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
