.class Lcom/aide/engine/c$b$d;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/cb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
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
.field final FH:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$d;

    const-wide v1, -0xc20c19bd1cb81abL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x25dbdb5694f0a10L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2d3bb43cdfc5542cL  # 8.500111861970944E-91

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x6300eec0c83019dL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$d;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x6300eec0c83019dL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x455c49bad1a56e5L
    .end annotation

    const-wide v0, 0x42d46c79382ef60L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/s;

    iget-object v3, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v3, v3, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v3}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/s;

    iget-object v4, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v4, v4, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v4}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v4

    new-instance v5, Lcom/aide/engine/t;

    invoke-direct {v5, v3, v2}, Lcom/aide/engine/t;-><init>(Lcom/aide/engine/s;Lcom/aide/engine/s;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x33aa67646fb7c29L
    .end annotation

    const-wide v0, 0x482e0aa3793fa9d0L  # 5.1113060455947175E39

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/s;

    iget-object v3, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v3, v3, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v3}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/s;

    iget-object v4, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v4, v4, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v4}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v4

    new-instance v5, Lcom/aide/engine/v;

    invoke-direct {v5, v3, v2, p1}, Lcom/aide/engine/v;-><init>(Lcom/aide/engine/s;Lcom/aide/engine/s;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public FH(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x5f0742544ce82287L
    .end annotation

    const-wide v0, -0xe798ae4f9c7e764L  # -7.311843657406532E238

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/A;

    iget-object v4, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v4, v4, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v4}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/s;

    invoke-direct {v3, v4, p1}, Lcom/aide/engine/A;-><init>(Lcom/aide/engine/s;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public j6()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xff3e28d91849dc9L
    .end annotation

    const-wide v0, -0x1fbca5daf059000L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/u;

    iget-object v4, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v4, v4, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v4}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/engine/s;

    invoke-direct {v3, v4}, Lcom/aide/engine/u;-><init>(Lcom/aide/engine/s;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public j6(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2715bc20b03c19d0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1f48ae262c456b29L  # 5.617488488610537E-158

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/z;

    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/s;

    invoke-direct {v1, v2, p1, p2}, Lcom/aide/engine/z;-><init>(Lcom/aide/engine/s;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x1f48ae262c456b29L  # 5.617488488610537E-158

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public j6(Ljava/lang/Object;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xfb6d84ae21cdddfL
    .end annotation

    const-wide v0, -0x6ad64bd5cf4ead0L  # -2.576798071856066E276

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/w;

    invoke-direct {v3, p1}, Lcom/aide/engine/w;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2e31768fd0579f18L
    .end annotation

    const-wide v0, 0x278d07c179080403L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/B;

    invoke-direct {v3, p1}, Lcom/aide/engine/B;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x3ff0fc72dea32363L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x121dcf3c43b4b308L  # -2.054807532799573E221

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, p5, :cond_35

    iget-object v2, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_35
    iget-object v0, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/aide/engine/s;

    iget-object v0, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v0

    new-instance v8, Lcom/aide/engine/y;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/aide/engine/y;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/aide/engine/s;)V

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_0 .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v1, :cond_76

    const-wide v2, -0x121dcf3c43b4b308L  # -2.054807532799573E221

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_76
    goto :goto_78

    :goto_77
    throw v0

    :goto_78
    goto :goto_77
.end method

.method public j6(ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x25b5fb9ad9fc0444L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$d;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x2624af9e623dd4e9L  # -7.222430317680698E124

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/aide/engine/s;

    iget-object v0, p0, Lcom/aide/engine/c$b$d;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->a8(Lcom/aide/engine/c;)Ljava/util/Stack;

    move-result-object v0

    new-instance v7, Lcom/aide/engine/x;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/x;-><init>(ZZLjava/lang/String;Ljava/lang/String;Lcom/aide/engine/s;)V

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$d;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x2624af9e623dd4e9L  # -7.222430317680698E124

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method
