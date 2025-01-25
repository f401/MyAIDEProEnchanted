.class Lcom/aide/ui/d;
.super Lcom/aide/engine/service/o$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/j;->we()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/ui/j;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x22fb86c82e12677cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x18aea3fc0f53a649L  # 8.596259399597165E-190

    const-wide v2, -0x61f134231d354828L  # -6.684846915245754E-164

    const-class v4, Lcom/aide/ui/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/j;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/d;->Zo:Lcom/aide/ui/j;

    invoke-direct {p0}, Lcom/aide/engine/service/o$a;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Hw(Ljava/util/List;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1016c5b2eaea60a3L
    .end annotation

    const-wide v0, 0x27afe6ea85f4091fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/d;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SourceEntity;

    iget-object v4, p0, Lcom/aide/ui/d;->Zo:Lcom/aide/ui/j;

    invoke-static {v4}, Lcom/aide/ui/j;->j6(Lcom/aide/ui/j;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->j3()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_2a
    iget-object v4, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_31

    goto :goto_10

    :cond_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/d;->Hw:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method

.method public j6(Ljava/lang/String;JII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x25228bb5fa0628dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/d;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xcbc2fd744310087L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lcom/aide/ui/a;

    invoke-direct {v0, p0}, Lcom/aide/ui/a;-><init>(Lcom/aide/ui/d;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    :cond_33
    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/d;->Hw:Z

    if-eqz v1, :cond_53

    const-wide v2, 0xcbc2fd744310087L

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v0
.end method

.method public j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4427d23328a472a0L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/d;->FH:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p5, 0x3

    aput-object v1, v0, p5

    new-instance p5, Ljava/lang/Integer;

    invoke-direct {p5, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 p5, 0x5

    aput-object p7, v0, p5

    const/4 p5, 0x6

    aput-object p8, v0, p5

    const-wide p7, 0x52c4a02c3daabc8L

    invoke-static {p7, p8, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_38
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object p5

    invoke-virtual {p5}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Nk;->FH()J

    move-result-wide p7

    cmp-long p1, p2, p7

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x3e8

    if-ge p1, p2, :cond_66

    iget-object p1, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;

    new-instance p2, Lcom/aide/ui/b;

    invoke-direct {p2, p0}, Lcom/aide/ui/b;-><init>(Lcom/aide/ui/d;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_66
    iget-object p1, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;

    new-instance p2, Lcom/aide/ui/c;

    invoke-direct {p2, p0, p4, p6, p1}, Lcom/aide/ui/c;-><init>(Lcom/aide/ui/d;IILjava/util/List;)V

    invoke-static {p2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    :cond_73
    return-void
.end method

.method public k2()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x13c659f43ab57880L
    .end annotation

    const-wide v0, -0x1a99dbd33f024468L  # -2.871115681389843E180

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/d;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/d;->v5:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/d;->Hw:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
