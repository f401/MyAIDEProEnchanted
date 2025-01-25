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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
            "Labcd/na;",
            "Labcd/Wa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$p;

    const-wide v1, -0x1590d58efc7c7bc9L  # -4.8856817140988765E204

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5b38b354a18c225L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xca128c29c20253cL

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xec8fe6e044bed6dL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$p;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0xec8fe6e044bed6dL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method private FH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x12e9b09fef2d3b71L
    .end annotation

    const-wide v0, 0x20e6f5f81b79c005L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Labcd/Da;->gn()Labcd/la;

    move-result-object v2

    invoke-interface {v2}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/na;

    iget-object v4, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v4}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v4

    iget-object v4, v4, Labcd/La;->er:Labcd/Xa;

    iget-object v5, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Wa;

    invoke-virtual {v4, v3}, Labcd/Xa;->j6(Labcd/Wa;)V

    goto :goto_1c

    :cond_3c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    iput-object v2, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    iput-object v2, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_44

    :cond_43
    return-void

    :catchall_44
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method private j6(I)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x215360254b3b6be4L
    .end annotation

    const-wide v0, 0x13cd7971892619a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    if-ltz p1, :cond_2d

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_2d

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2c

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_30

    return-object p1

    :cond_2c
    return-object v2

    :cond_2d
    const-string p1, ""

    return-object p1

    :catchall_30
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v3, :cond_3d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method private j6(II)Ljava/util/List;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x1b6a0ff867d6c523L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/aide/engine/FindResult$Highlighting;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x66fff2923853d53dL  # 1.3900639604477835E188

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    invoke-virtual {v1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    invoke-virtual {v1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-interface {v1}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/na;

    iget-object v3, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Wa;

    invoke-interface {v2}, Labcd/na;->v5()Labcd/pa;

    move-result-object v2

    const/4 v4, 0x0

    :goto_4a
    iget v5, v3, Labcd/Wa;->EQ:I

    if-ge v4, v5, :cond_8a

    iget-object v5, v3, Labcd/Wa;->gn:[I

    aget v5, v5, v4

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_87

    iget-object v5, v3, Labcd/Wa;->v5:[I

    aget v5, v5, v4

    if-gt v5, p1, :cond_87

    iget-object v5, v3, Labcd/Wa;->Zo:[I

    aget v5, v5, v4

    if-lt v5, p2, :cond_87

    iget-object v5, v3, Labcd/Wa;->FH:[I

    aget v5, v5, v4

    iget-object v6, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v6, v2, v5}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;Labcd/pa;I)Lcom/aide/engine/m;

    move-result-object v8

    if-eqz v8, :cond_87

    new-instance v5, Lcom/aide/engine/FindResult$Highlighting;

    iget-object v6, v3, Labcd/Wa;->v5:[I

    aget v9, v6, v4

    iget-object v6, v3, Labcd/Wa;->VH:[I

    aget v10, v6, v4

    iget-object v6, v3, Labcd/Wa;->Zo:[I

    aget v11, v6, v4

    iget-object v6, v3, Labcd/Wa;->gn:[I

    aget v12, v6, v4

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/aide/engine/FindResult$Highlighting;-><init>(Lcom/aide/engine/m;IIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    :cond_8a
    iget-object v2, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v2, v2, Labcd/La;->er:Labcd/Xa;

    invoke-virtual {v2, v3}, Labcd/Xa;->j6(Labcd/Wa;)V
    :try_end_95
    .catchall {:try_start_0 .. :try_end_95} :catchall_97

    goto :goto_31

    :cond_96
    return-object v0

    :catchall_97
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x66fff2923853d53dL  # 1.3900639604477835E188

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    goto :goto_b2

    :goto_b1
    throw v0

    :goto_b2
    goto :goto_b1
.end method

.method private j6(Labcd/Da;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xba2c48152212670L
    .end annotation

    const-wide v0, -0x29ae1328ece8488L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;

    if-eq p1, v2, :cond_69

    invoke-direct {p0}, Lcom/aide/engine/c$b$p;->FH()V

    iput-object p1, p0, Lcom/aide/engine/c$b$p;->Hw:Labcd/Da;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_6a

    :try_start_15
    invoke-virtual {p1}, Labcd/Da;->we()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/engine/c$b$p;->Zo:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-virtual {p1}, Labcd/Da;->aM()Ljava/io/Reader;

    move-result-object v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2c} :catch_68
    .catchall {:try_start_15 .. :try_end_2c} :catchall_6a

    :try_start_2c
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v3

    invoke-interface {v3}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/na;

    iget-object v5, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    iget-object v6, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    invoke-static {v6}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v6

    iget-object v6, v6, Labcd/La;->er:Labcd/Xa;

    invoke-virtual {v6}, Labcd/Xa;->j6()Labcd/Wa;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_56
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/engine/c$b$p;->v5:Ljava/util/Map;

    invoke-interface {v3, p1, v2, v4}, Labcd/la;->j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;)V
    :try_end_5f
    .catchall {:try_start_2c .. :try_end_5f} :catchall_63

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    goto :goto_69

    :catchall_63
    move-exception v3

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v3
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_68} :catch_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_6a

    :catch_68
    move-exception p1

    :cond_69
    :goto_69
    return-void

    :catchall_6a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v3, :cond_72

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    goto :goto_74

    :goto_73
    throw v2

    :goto_74
    goto :goto_73
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x422d22fafe49c18cL
    .end annotation

    const-wide v0, 0x4cc7d28cd0fd76e0L  # 7.656243837934765E61

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->jO(Lcom/aide/engine/c;)Lcom/aide/engine/Q;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/c$b$p;->FH:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/aide/engine/Q;->j6(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/aide/engine/c$b$p;->FH()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3785e69d9aa2b939L
    .end annotation

    const-wide v0, 0x29f05156e29edd87L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$p;->FH:Ljava/util/List;

    iget-object v2, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->jO(Lcom/aide/engine/c;)Lcom/aide/engine/Q;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/engine/Q;->br()V

    invoke-direct {p0}, Lcom/aide/engine/c$b$p;->FH()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j6(Labcd/Da;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x5452f558306a4cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xbda917895bd17f0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-lez p2, :cond_43

    if-ne p2, p4, :cond_43

    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$p;->j6(Labcd/Da;)V

    iget-object v0, p0, Lcom/aide/engine/c$b$p;->FH:Ljava/util/List;

    new-instance v8, Lcom/aide/engine/FindResult;

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/aide/engine/c$b$p;->j6(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, p4}, Lcom/aide/engine/c$b$p;->j6(II)Ljava/util/List;

    move-result-object v4

    move-object v1, v8

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/aide/engine/FindResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;III)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v1, :cond_68

    const-wide v2, -0xbda917895bd17f0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x78e45833f8678f9L
    .end annotation

    const-wide v0, 0x9e7d69d71dcf1fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$p;->VH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->jO(Lcom/aide/engine/c;)Lcom/aide/engine/Q;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/Q;->DW(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$p;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method
