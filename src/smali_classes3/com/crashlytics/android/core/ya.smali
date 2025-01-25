.class Lcom/crashlytics/android/core/ya;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/Qa;


# instance fields
.field private final DW:[Lcom/crashlytics/android/core/Qa;

.field private final FH:Lcom/crashlytics/android/core/za;

.field private final j6:I


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/core/Qa;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/core/ya;->j6:I

    iput-object p2, p0, Lcom/crashlytics/android/core/ya;->DW:[Lcom/crashlytics/android/core/Qa;

    new-instance p2, Lcom/crashlytics/android/core/za;

    invoke-direct {p2, p1}, Lcom/crashlytics/android/core/za;-><init>(I)V

    iput-object p2, p0, Lcom/crashlytics/android/core/ya;->FH:Lcom/crashlytics/android/core/za;

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 9

    array-length v0, p1

    iget v1, p0, Lcom/crashlytics/android/core/ya;->j6:I

    if-gt v0, v1, :cond_6

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/crashlytics/android/core/ya;->DW:[Lcom/crashlytics/android/core/Qa;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    :goto_b
    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    array-length v5, v3

    iget v6, p0, Lcom/crashlytics/android/core/ya;->j6:I

    if-gt v5, v6, :cond_15

    goto :goto_1c

    :cond_15
    invoke-interface {v4, p1}, Lcom/crashlytics/android/core/Qa;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    :goto_1c
    array-length p1, v3

    iget v0, p0, Lcom/crashlytics/android/core/ya;->j6:I

    if-le p1, v0, :cond_27

    iget-object p1, p0, Lcom/crashlytics/android/core/ya;->FH:Lcom/crashlytics/android/core/za;

    invoke-virtual {p1, v3}, Lcom/crashlytics/android/core/za;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    :cond_27
    return-object v3
.end method
