.class Lcom/crashlytics/android/core/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/ka;


# instance fields
.field private final DW:Lcom/crashlytics/android/core/Aa;

.field private final j6:Lcom/crashlytics/android/core/na;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/na;Lcom/crashlytics/android/core/Aa;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/j;->j6:Lcom/crashlytics/android/core/na;

    iput-object p2, p0, Lcom/crashlytics/android/core/j;->DW:Lcom/crashlytics/android/core/Aa;

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/ja;)Z
    .registers 5

    sget-object v0, Lcom/crashlytics/android/core/i;->j6:[I

    iget-object v1, p1, Lcom/crashlytics/android/core/ja;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-interface {v1}, Lcom/crashlytics/android/core/Ka;->getType()Lcom/crashlytics/android/core/Ka$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    iget-object v0, p0, Lcom/crashlytics/android/core/j;->DW:Lcom/crashlytics/android/core/Aa;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/Aa;->j6(Lcom/crashlytics/android/core/ja;)Z

    return v1

    :cond_1c
    iget-object v0, p0, Lcom/crashlytics/android/core/j;->j6:Lcom/crashlytics/android/core/na;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/na;->j6(Lcom/crashlytics/android/core/ja;)Z

    return v1
.end method
