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
        "Ljava/util/ArrayList<",
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
    .registers 3

    const-class v0, Labcd/De$c;

    const-wide v1, 0x2a7f1abd7cca0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xe4e45c6e1625f0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xa373b91922351cdL

    :try_start_6
    sget-boolean v3, Labcd/De$c;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/De$c;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Ce;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x9e24e8c9224b6b0L  # -9.130883282841436E260

    :try_start_6
    sget-boolean v3, Labcd/De$c;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/De$c;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/De$c;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method DW()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x19852c8d0583421L
    .end annotation

    const-wide v0, -0x25bbdf2acd078d5bL  # -6.812621769132831E126

    :try_start_5
    sget-boolean v2, Labcd/De$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_12
    if-ltz v2, :cond_2c

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/De$b;

    invoke-interface {v3}, Labcd/De$b;->j6()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_24
    instance-of v3, v3, Labcd/De$c;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2d

    if-nez v3, :cond_29

    goto :goto_2c

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_2c
    :goto_2c
    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/De$c;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method public getType()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x19ff6ab8d417528L
    .end annotation

    const-wide v0, 0x4b1532c72362cd4L

    :try_start_5
    sget-boolean v2, Labcd/De$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x2

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/De$c;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Labcd/De$b;)I
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xdeaa2c362ffc240L
    .end annotation

    const-wide v0, -0x6407d6856db6a920L  # -6.105705767899419E-174

    :try_start_5
    sget-boolean v2, Labcd/De$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_22

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_17

    return v3

    :cond_17
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/De$b;

    invoke-interface {v3, v2}, Labcd/De$b;->j6(Labcd/De$b;)I

    move-result p1

    return p1

    :cond_22
    invoke-interface {p1}, Labcd/De$b;->getType()I

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_94

    const/4 v6, 0x1

    if-eq v4, v6, :cond_93

    const/4 v6, 0x2

    if-ne v4, v6, :cond_78

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, p1

    check-cast v6, Labcd/De$c;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    goto :goto_48

    :cond_47
    return v3

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/De$b;

    goto :goto_56

    :cond_55
    move-object v7, v2

    :goto_56
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Labcd/De$b;

    goto :goto_64

    :cond_63
    move-object v8, v2

    :goto_64
    if-nez v7, :cond_71

    if-nez v8, :cond_6a

    const/4 v7, 0x0

    goto :goto_75

    :cond_6a
    invoke-interface {v8, v7}, Labcd/De$b;->j6(Labcd/De$b;)I

    move-result v7

    mul-int/lit8 v7, v7, -0x1

    goto :goto_75

    :cond_71
    invoke-interface {v7, v8}, Labcd/De$b;->j6(Labcd/De$b;)I

    move-result v7

    :goto_75
    if-eqz v7, :cond_3a

    return v7

    :cond_78
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
    :try_end_93
    .catchall {:try_start_5 .. :try_end_93} :catchall_95

    :cond_93
    return v6

    :cond_94
    return v5

    :catchall_95
    move-exception v2

    sget-boolean v3, Labcd/De$c;->DW:Z

    if-eqz v3, :cond_9d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_9d
    goto :goto_9f

    :goto_9e
    throw v2

    :goto_9f
    goto :goto_9e
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1fd535ebaa93c9d7L
    .end annotation

    const-wide v0, 0x6f2eaf6b4c82631L

    :try_start_5
    sget-boolean v2, Labcd/De$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/De$c;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2cf4699892b86af0L
    .end annotation

    const-wide v0, 0xa3836d32a5e52e0L

    :try_start_5
    sget-boolean v2, Labcd/De$c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/De$b;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_33

    instance-of v5, v4, Labcd/De$c;

    if-eqz v5, :cond_2e

    const/16 v5, 0x2d

    goto :goto_30

    :cond_2e
    const/16 v5, 0x2e

    :goto_30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-object v0

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/De$c;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v2

    :goto_46
    goto :goto_45
.end method
