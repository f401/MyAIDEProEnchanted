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
    .registers 12

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->v5()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/v;->EQ()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v2, Lio/fabric/sdk/android/services/common/v$a;->FH:Lio/fabric/sdk/android/services/common/v$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->j6:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->tp()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/crashlytics/android/answers/L;->DW:Lio/fabric/sdk/android/services/common/v;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/v;->VH()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/crashlytics/android/answers/J;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/crashlytics/android/answers/L;->FH:Ljava/lang/String;

    iget-object v10, p0, Lcom/crashlytics/android/answers/L;->Hw:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/answers/J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
