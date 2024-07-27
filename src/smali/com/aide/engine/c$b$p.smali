.class Lcom/aide/engine/c$b$p;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ob;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x2248aed64a77de09L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/FindResult;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Labcd/Da;
    .annotation runtime Labcd/ru;
        field = -0x20fad0db8c107148L
    .end annotation
.end field

.field final VH:Lcom/aide/engine/c$b;

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x36aaa0a6dece4abbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x28b435b20e8e4148L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Labcd/na;",
            "Labcd/Wa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1590d58efc7c7bc9L    # -4.8856817140988765E204

    const-class v0, Lcom/aide/engine/c$b$p;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x5b38b354a18c225L
    .end annotation

    const-wide v4, 0xca128c29c20253cL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xca128c29c20253cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    const-wide v2, 0xec8fe6e044bed6dL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xec8fe6e044bed6dL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$p;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private FH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x12e9b09fef2d3b71L
    .end annotation

    const-wide v4, 0x20e6f5f81b79c005L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20e6f5f81b79c005L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    invoke-virtual {v0}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v2, v2, Labcd/La;->er:Labcd/Xa;

    iget-object v3, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Wa;

    invoke-virtual {v2, v0}, Labcd/Xa;->j6(Labcd/Wa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-void
.end method

.method private j6(I)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x215360254b3b6be4L
    .end annotation

    const-wide v4, 0x13cd7971892619a0L

    const/16 v2, 0xc8

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13cd7971892619a0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(II)Ljava/util/List;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1b6a0ff867d6c523L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/FindResult$Highlighting;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x66fff2923853d53dL    # 1.3900639604477835E188

    invoke-static {v4, v5, p0, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v2

    invoke-interface {v2}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/na;

    iget-object v3, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Labcd/Wa;

    move-object v8, v0

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v12

    const/4 v2, 0x0

    move v9, v2

    :goto_1
    iget v2, v8, Labcd/Wa;->EQ:I

    if-ge v9, v2, :cond_2

    iget-object v2, v8, Labcd/Wa;->gn:[I

    aget v2, v2, v9

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_1

    iget-object v2, v8, Labcd/Wa;->v5:[I

    aget v2, v2, v9

    if-gt v2, p1, :cond_1

    iget-object v2, v8, Labcd/Wa;->Zo:[I

    aget v2, v2, v9

    if-lt v2, p2, :cond_1

    iget-object v2, v8, Labcd/Wa;->FH:[I

    aget v2, v2, v9

    iget-object v3, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v3, v12, v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;Labcd/pa;I)Lcom/aide/engine/m;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/aide/engine/FindResult$Highlighting;

    iget-object v4, v8, Labcd/Wa;->v5:[I

    aget v4, v4, v9

    iget-object v5, v8, Labcd/Wa;->VH:[I

    aget v5, v5, v9

    iget-object v6, v8, Labcd/Wa;->Zo:[I

    aget v6, v6, v9

    iget-object v7, v8, Labcd/Wa;->gn:[I

    aget v7, v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/aide/engine/FindResult$Highlighting;-><init>(Lcom/aide/engine/m;IIII)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v2, v2, Labcd/La;->er:Labcd/Xa;

    invoke-virtual {v2, v8}, Labcd/Xa;->j6(Labcd/Wa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v2, :cond_3

    const-wide v4, 0x66fff2923853d53dL    # 1.3900639604477835E188

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3

    :cond_4
    return-object v10
.end method

.method private j6(Labcd/Da;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xba2c48152212670L
    .end annotation

    const-wide v6, -0x29ae1328ece8488L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29ae1328ece8488L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/aide/engine/c$b$p;->FH()V

    iput-object p1, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Labcd/Da;->we()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Labcd/Da;->aM()Ljava/io/Reader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    iget-object v3, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    iget-object v4, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v4}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v4

    iget-object v4, v4, Labcd/La;->er:Labcd/Xa;

    invoke-virtual {v4}, Labcd/Xa;->j6()Labcd/Wa;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-interface {v0, p1, v1, v2}, Labcd/la;->j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x422d22fafe49c18cL
    .end annotation

    const-wide v2, 0x4cc7d28cd0fd76e0L    # 7.656243837934765E61

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4cc7d28cd0fd76e0L    # 7.656243837934765E61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->jO(Lcom/aide/engine/c;)Lcom/aide/engine/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/engine/c$b$p;->FH:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/aide/engine/Q;->j6(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aide/engine/c$b$p;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3785e69d9aa2b939L
    .end annotation

    const-wide v2, 0x29f05156e29edd87L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29f05156e29edd87L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$p;->FH:Ljava/util/List;

    iget-object v0, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->jO(Lcom/aide/engine/c;)Lcom/aide/engine/Q;

    move-result-object v0

    invoke-interface {v0}, Lcom/aide/engine/Q;->br()V

    invoke-direct {p0}, Lcom/aide/engine/c$b$p;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x5452f558306a4cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xbda917895bd17f0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-lez p2, :cond_1

    if-ne p2, p4, :cond_1

    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$p;->j6(Labcd/Da;)V

    iget-object v7, p0, Lcom/aide/engine/c$b$p;->FH:Ljava/util/List;

    new-instance v0, Lcom/aide/engine/FindResult;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/aide/engine/c$b$p;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, p4}, Lcom/aide/engine/c$b$p;->j6(II)Ljava/util/List;

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/FindResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v0, :cond_2

    const-wide v2, -0xbda917895bd17f0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x78e45833f8678f9L
    .end annotation

    const-wide v2, 0x9e7d69d71dcf1fL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9e7d69d71dcf1fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->jO(Lcom/aide/engine/c;)Lcom/aide/engine/Q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aide/engine/Q;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
