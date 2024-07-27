.class Lcom/crashlytics/android/core/Ma;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/Sa;


# instance fields
.field private final DW:Lcom/crashlytics/android/core/Sa;

.field private FH:Z

.field private Hw:Ljava/lang/String;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/core/Sa;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/Ma;->FH:Z

    iput-object p1, p0, Lcom/crashlytics/android/core/Ma;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/core/Ma;->DW:Lcom/crashlytics/android/core/Sa;

    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/crashlytics/android/core/Ma;->FH:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/Ma;->j6:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->Ws(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/Ma;->Hw:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/core/Ma;->FH:Z

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/Ma;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/Ma;->DW:Lcom/crashlytics/android/core/Sa;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/crashlytics/android/core/Sa;->j6()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
