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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/core/ya;->j6:I

    iput-object p2, p0, Lcom/crashlytics/android/core/ya;->DW:[Lcom/crashlytics/android/core/Qa;

    new-instance v0, Lcom/crashlytics/android/core/za;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/za;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/ya;->FH:Lcom/crashlytics/android/core/za;

    return-void
.end method


# virtual methods
.method public j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 9

    array-length v0, p1

    iget v1, p0, Lcom/crashlytics/android/core/ya;->j6:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/crashlytics/android/core/ya;->DW:[Lcom/crashlytics/android/core/Qa;

    array-length v3, v2

    const/4 v1, 0x0

    move-object v0, p1

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    array-length v5, v0

    iget v6, p0, Lcom/crashlytics/android/core/ya;->j6:I

    if-gt v5, v6, :cond_3

    :cond_1
    array-length v1, v0

    iget v2, p0, Lcom/crashlytics/android/core/ya;->j6:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/crashlytics/android/core/ya;->FH:Lcom/crashlytics/android/core/za;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/za;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    :cond_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v4, p1}, Lcom/crashlytics/android/core/Qa;->j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
