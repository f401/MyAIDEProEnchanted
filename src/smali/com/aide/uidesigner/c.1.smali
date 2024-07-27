.class public Lcom/aide/uidesigner/c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public FH:Ljava/lang/Object;

.field private Hw:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x46ee55d28988cd7cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1f4f701f455ae011L    # 7.155613572133547E-158

    const-class v0, Lcom/aide/uidesigner/c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const-wide v4, 0x15ef00d57a932405L    # 4.94424817447832E-203

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15ef00d57a932405L    # 4.94424817447832E-203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/uidesigner/c;->Hw:Ljava/util/Map;

    iput-object p1, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6(Lcom/aide/uidesigner/N$a;Ljava/lang/Object;)V
    .registers 10

    const-wide v2, 0x672dc3aa3ce7564L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x672dc3aa3ce7564L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/aide/uidesigner/c;->Hw:Ljava/util/Map;

    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/uidesigner/c;->Hw:Ljava/util/Map;

    iget-object v2, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v1, v0

    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    iget-object v0, v0, Lcom/aide/uidesigner/N$b;->Mr:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const-class v2, Ljava/lang/Enum;

    if-ne v0, v2, :cond_3

    :try_start_2
    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    :cond_3
    iget-object v2, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/c;->DW:Z

    if-eqz v0, :cond_5

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6(Lcom/aide/uidesigner/N$a;)Z
    .registers 6

    const-wide v2, -0x6530b067292468dL    # -1.28327157475908E278

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6530b067292468dL    # -1.28327157475908E278

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->FH:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->FH:Ljava/lang/Class;

    iget-object v1, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/c;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
