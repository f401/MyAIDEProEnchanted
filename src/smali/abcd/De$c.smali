.class Labcd/De$c;
.super Ljava/util/ArrayList;

# interfaces
.implements Labcd/De$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/De;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Labcd/De$b;",
        ">;",
        "Labcd/De$b;"
    }
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2a7f1abd7cca0L

    const-class v0, Labcd/De$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xe4e45c6e1625f0L
    .end annotation

    const-wide v4, 0xa373b91922351cdL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa373b91922351cdL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Ce;)V
    .registers 8

    const-wide v4, -0x9e24e8c9224b6b0L    # -9.130883282841436E260

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9e24e8c9224b6b0L    # -9.130883282841436E260

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/De$c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x19852c8d0583421L
    .end annotation

    const-wide v4, -0x25bbdf2acd078d5bL    # -6.812621769132831E126

    :try_start_0
    sget-boolean v0, Labcd/De$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x25bbdf2acd078d5bL    # -6.812621769132831E126

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/De$b;

    invoke-interface {v0}, Labcd/De$b;->j6()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v0, v0, Labcd/De$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$c;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public getType()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x19ff6ab8d417528L
    .end annotation

    const-wide v2, 0x4b1532c72362cd4L

    :try_start_0
    sget-boolean v0, Labcd/De$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4b1532c72362cd4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/De$b;)I
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xdeaa2c362ffc240L
    .end annotation

    const-wide v8, -0x6407d6856db6a920L    # -6.105705767899419E-174

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v5, Labcd/De$c;->j6:Z

    if-eqz v5, :cond_0

    const-wide v6, -0x6407d6856db6a920L    # -6.105705767899419E-174

    invoke-static {v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/De$b;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Labcd/De$b;->j6(Labcd/De$b;)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Labcd/De$b;->getType()I

    move-result v5

    if-eqz v5, :cond_d

    if-eq v5, v2, :cond_1

    const/4 v2, 0x2

    if-ne v5, v2, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Labcd/De$c;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/De$b;

    move-object v5, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/De$b;

    :goto_2
    if-nez v5, :cond_a

    if-nez v2, :cond_9

    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move-object v5, v4

    goto :goto_1

    :cond_8
    move-object v2, v4

    goto :goto_2

    :cond_9
    invoke-interface {v2, v5}, Labcd/De$b;->j6(Labcd/De$b;)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_a
    invoke-interface {v5, v2}, Labcd/De$b;->j6(Labcd/De$b;)I

    move-result v2

    goto :goto_3

    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/De$c;->DW:Z

    if-eqz v3, :cond_c

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    throw v2

    :cond_d
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1fd535ebaa93c9d7L
    .end annotation

    const-wide v2, 0x6f2eaf6b4c82631L

    :try_start_0
    sget-boolean v0, Labcd/De$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6f2eaf6b4c82631L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$c;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2cf4699892b86af0L
    .end annotation

    const-wide v4, 0xa3836d32a5e52e0L

    :try_start_0
    sget-boolean v0, Labcd/De$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa3836d32a5e52e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/De$b;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    instance-of v1, v0, Labcd/De$c;

    if-eqz v1, :cond_3

    const/16 v1, 0x2d

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$c;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/16 v1, 0x2e

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method
