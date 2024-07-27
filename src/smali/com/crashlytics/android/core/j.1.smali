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

    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/core/i;->j6:[I

    iget-object v2, p1, Lcom/crashlytics/android/core/ja;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-interface {v2}, Lcom/crashlytics/android/core/Ka;->getType()Lcom/crashlytics/android/core/Ka$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/j;->DW:Lcom/crashlytics/android/core/Aa;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/core/Aa;->j6(Lcom/crashlytics/android/core/ja;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/crashlytics/android/core/j;->j6:Lcom/crashlytics/android/core/na;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/core/na;->j6(Lcom/crashlytics/android/core/ja;)Z

    goto :goto_0
.end method
