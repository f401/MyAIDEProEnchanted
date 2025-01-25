.class Lcom/crashlytics/android/answers/L;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Lio/fabric/sdk/android/services/common/v;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/lang/String;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/L;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    iput-object p3, p0, Lcom/crashlytics/android/answers/L;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/answers/L;->Hw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j6()Lcom/crashlytics/android/answers/J;
    .registers 14

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->v5()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->EQ()Ljava/lang/Boolean;

    move-result-object v6

    sget-object v1, Lio/fabric/sdk/android/services/common/v$a;->FH:Lio/fabric/sdk/android/services/common/v$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->j6:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->tp()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->VH()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/crashlytics/android/answers/J;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lcom/crashlytics/android/answers/L;->FH:Ljava/lang/String;

    iget-object v12, p0, Lcom/crashlytics/android/answers/L;->Hw:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/crashlytics/android/answers/J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
