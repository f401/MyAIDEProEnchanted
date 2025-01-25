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
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/c;

    const-wide v1, 0x1f4f701f455ae011L  # 7.155613572133547E-158

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x15ef00d57a932405L  # 4.94424817447832E-203

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/c;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/uidesigner/c;->Hw:Ljava/util/Map;

    iput-object p1, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/c;->DW:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method


# virtual methods
.method public j6(Lcom/aide/uidesigner/N$a;Ljava/lang/Object;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/c;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x672dc3aa3ce7564L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_84

    :cond_c
    if-nez p2, :cond_f

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3e

    iget-object v0, p0, Lcom/aide/uidesigner/c;->Hw:Ljava/util/Map;

    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3e

    iget-object v0, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/uidesigner/c;->Hw:Ljava/util/Map;

    iget-object v4, p1, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    const-string v4, "()"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    iget-object v1, v1, Lcom/aide/uidesigner/N$b;->Mr:Ljava/lang/Class;
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_82

    const-class v4, Ljava/lang/Enum;

    if-ne v1, v4, :cond_52

    :try_start_50
    iget-object v1, p1, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    :cond_52
    iget-object v4, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    iget-object p1, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v4, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v1, v5, v3

    invoke-virtual {v4, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    :cond_74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object p1, p1, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_50 .. :try_end_81} :catchall_82

    goto :goto_83

    :catchall_82
    move-exception p1

    :goto_83
    return-void

    :catchall_84
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/c;->DW:Z

    if-eqz v1, :cond_95

    const-wide v2, 0x672dc3aa3ce7564L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_95
    throw v0
.end method

.method public j6(Lcom/aide/uidesigner/N$a;)Z
    .registers 6

    const-wide v0, -0x6530b067292468dL  # -1.28327157475908E278

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Lcom/aide/uidesigner/N$a;->FH:Ljava/lang/Class;

    if-eqz v2, :cond_1c

    iget-object v2, p1, Lcom/aide/uidesigner/N$a;->FH:Ljava/lang/Class;

    iget-object v3, p0, Lcom/aide/uidesigner/c;->FH:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/c;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method
