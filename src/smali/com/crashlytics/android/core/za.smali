.class Lcom/crashlytics/android/core/za;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/Qa;


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/core/za;->j6:I

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 7

    const/4 v4, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/crashlytics/android/core/za;->j6:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    div-int/lit8 v2, v1, 0x2

    sub-int v3, v1, v2

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0
.end method
