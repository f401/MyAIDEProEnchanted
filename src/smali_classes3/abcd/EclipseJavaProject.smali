.class public Labcd/EclipseJavaProject;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/IProject;


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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/EclipseJavaProject;

    const-wide v1, 0x26c5315b62558560L  # 6.411802225991611E-122

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x56f7a4ce990c308L

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x189dc2101fff9cfbL  # -1.0159640457204832E190

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/EclipseJavaProject;->U2(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_2e

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    :try_start_17
    invoke-static {v4, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v4, p1}, Labcd/FileSystemUtils;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_2e

    return-object p0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2d
    return-object v1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x189dc2101fff9cfbL  # -1.0159640457204832E190

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public static DW(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x60525f4aeee4e42cL

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dex/classes.dex.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x60525f4aeee4e42cL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public static Hw(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x7a7afd08553c004L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dex/jars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x7a7afd08553c004L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method private J0()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1606cf78ef23f28bL
    .end annotation

    const-wide v0, 0x4a8dcfc58dbb05bL

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x2

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method private J8()Z
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1666151b39606950L
    .end annotation

    const-wide v0, 0xe56de66187cd820L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/EclipseJavaProject;->U2(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v5, v3, :cond_3a

    aget-object v7, v2, v5

    invoke-direct {p0}, Labcd/EclipseJavaProject;->J0()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const-string v11, ".java"

    aput-object v11, v10, v4

    invoke-static {v7, v8, v10}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0}, Labcd/EclipseJavaProject;->J0()I

    move-result v7
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_3b

    if-lt v6, v7, :cond_37

    return v9

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_3a
    return v4

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method public static Mr(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x1fee557c590bcc98L  # 7.07002423650802E-155

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v4}, Labcd/EclipseJavaProjectConfig;-><init>()V

    invoke-static {p0}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v4

    check-cast v4, Labcd/EclipseJavaProjectConfig;

    iget-object v4, v4, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v5}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {v5, p0}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_4e

    return-object v3

    :catchall_4e
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v4, :cond_56

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v3

    :goto_58
    goto :goto_57
.end method

.method public static U2(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x4957e90c4ef8431bL  # -2.1097998669640215E-45

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v4}, Labcd/EclipseJavaProjectConfig;-><init>()V

    invoke-static {p0}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v4

    check-cast v4, Labcd/EclipseJavaProjectConfig;

    iget-object v4, v4, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v5}, Labcd/EclipseJavaProjectConfig$Node;->isSrcEntry()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {v5, p0}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_4e

    return-object v3

    :catchall_4e
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v4, :cond_56

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v3

    :goto_58
    goto :goto_57
.end method

.method public static a8(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x235ae0550e17ae54L

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/.classpath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x12fb5dbca4f9e2cfL

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v0}, Labcd/EclipseJavaProjectConfig;-><init>()V

    invoke-static {p0}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v0

    check-cast v0, Labcd/EclipseJavaProjectConfig;

    iget-object v0, v0, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v1}, Labcd/EclipseJavaProjectConfig$Node;->isOutputEntry()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, p0}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/debug"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/release"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_63
    if-eqz p1, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_9e

    const-wide v2, 0x12fb5dbca4f9e2cfL

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9e
    goto :goto_a0

    :goto_9f
    throw v0

    :goto_a0
    goto :goto_9f
.end method

.method public static j6(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x3c3fcd04e59e61e4L  # -2.3345426883357061E18

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Labcd/EclipseJavaProject;->getCompiledClassesOutputDir(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x3c3fcd04e59e61e4L  # -2.3345426883357061E18

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public static j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x953404f3a40cac4L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/EclipseJavaProject;->j6(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_2e

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    :try_start_17
    invoke-static {v4, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v4, p1}, Labcd/FileSystemUtils;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_2e

    return-object p0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2d
    return-object v1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x953404f3a40cac4L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method public static j6(Ljava/util/Map;)[Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xcf0410099c5ce20L

    :try_start_6
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v6}, Labcd/EclipseJavaProjectConfig;-><init>()V

    invoke-static {v5}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v6

    check-cast v6, Labcd/EclipseJavaProjectConfig;

    iget-object v6, v6, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3b
    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v7}, Labcd/EclipseJavaProjectConfig$Node;->isSrcEntry()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-virtual {v7, v5}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_5f

    return-object v4

    :catchall_5f
    move-exception v3

    sget-boolean v4, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v4, :cond_67

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    goto :goto_69

    :goto_68
    throw v3

    :goto_69
    goto :goto_68
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, 0x54e4663ee3468ab3L  # 8.923719214747945E100

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x362bd14a852ae520L  # 9.516767763804223E-48

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x5c9029304a8c8514L  # 7.517672278674241E137

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "com.aide.ui"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public EQ(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x1bdc78aa9a8c0009L  # -2.4150140259115103E174

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/EclipseJavaProject;->Mr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    if-nez p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x159d19b785c217c0L  # -2.9627730506991655E204

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/EclipseJavaProject;->J8(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    if-nez p1, :cond_15

    const-string p1, "com.aide.ui"

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public FH()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/g$b;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x184e695661ec4f18L  # -3.1346329634270225E191

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/trainer/g$b;

    const-string v3, "course_java"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "com.aide.ui"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "com.aide.trainer.java"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v7, v4}, Lcom/aide/ui/trainer/g$b;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    new-array v3, v7, [Lcom/aide/ui/trainer/g$b;

    aput-object v2, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-object v0

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x15f10b36abc7bf6fL  # 5.436125019053087E-203

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 9

    const-wide v0, 0x1b801fe446a07167L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v3}, Labcd/EclipseJavaProjectConfig;-><init>()V

    invoke-static {v2}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v3

    check-cast v3, Labcd/EclipseJavaProjectConfig;

    iget-object v3, v3, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/EclipseJavaProjectConfig$Node;

    invoke-virtual {v5}, Labcd/EclipseJavaProjectConfig$Node;->isLibEntry()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {v5, v2}, Labcd/EclipseJavaProjectConfig$Node;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_48
    invoke-static {v2}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Labcd/EclipseJavaProjectConfig;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v2

    :goto_5a
    goto :goto_59
.end method

.method public J0(Ljava/lang/String;)I
    .registers 6

    const-wide v0, 0x1745e60c93331d41L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/kj;->DW(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public J8(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x4312856350494c30L  # -3.2728212744853937E-15

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.trainer.java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2b

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    return p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public QX(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0xe0f85d2d18fb800L  # 5.909320608826582E-241

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/AndroidManifest.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    if-nez p1, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    return p1

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public VH()Lcom/aide/engine/EngineSolution;
    .registers 6

    const-wide v0, -0x35bcf52253e73de0L  # -5.566112894684453E49

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Labcd/ij;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolution;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 10

    const-wide v0, -0x2f92461f4bf6802dL  # -2.7536363849464222E79

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labcd/EclipseJavaProjectConfig;

    invoke-direct {v3}, Labcd/EclipseJavaProjectConfig;-><init>()V

    invoke-static {v2}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/BaseProjectConfig;->j6(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v3

    check-cast v3, Labcd/EclipseJavaProjectConfig;

    iget-object v3, v3, Labcd/EclipseJavaProjectConfig;->nodes:Ljava/util/List;

    new-instance v4, Labcd/EclipseJavaProjectConfig$Node;

    const-string v5, "lib"

    invoke-static {v2, p1}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Labcd/EclipseJavaProjectConfig$Node;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Labcd/EclipseJavaProject;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Labcd/EclipseJavaProjectConfig;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public Ws(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0x16448bc4f0704ecL  # -7.424450093132884E301

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/kj;->FH(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public XL(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x55604e8476dea03L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Zo()Z
    .registers 6

    const-wide v0, -0xf80510592c80a0L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Zo()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    :cond_1f
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "AllowSavingOneJavaFileInNonPremium"

    const/4 v4, 0x2

    new-array v4, v4, [D

    fill-array-data v4, :array_42

    invoke-static {v2, v3, v4}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;[D)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-direct {p0}, Labcd/EclipseJavaProject;->J8()Z

    move-result v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_38

    return v0

    :cond_36
    const/4 v0, 0x1

    return v0

    :catchall_38
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2

    nop

    :array_42
    .array-data 8
        0x3ff0000000000000L  # 1.0
        0x0
    .end array-data
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x17057962b01320f9L  # -4.9570840667397304E197

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/EclipseJavaProject;->Mr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x18203f0352d84c40L  # 1.78042256611066E-192

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getProjectAttribute()Ljava/lang/String;
    .registers 10

    const-string v0, "<br/><br/>"

    const-wide v1, 0x14c5d1555d3096b8L

    :try_start_7
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_c2

    if-eqz v4, :cond_21

    const-string v4, "项目路径:"

    goto :goto_23

    .line 99
    :cond_21
    const-string v4, "Java Project:"

    .line 0
    :goto_23
    :try_start_23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</b><br/><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<i>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_c2

    if-eqz v3, :cond_53

    const-string v3, "支持库:"

    goto :goto_55

    .line 99
    :cond_53
    const-string v3, "Library JARs:"

    .line 0
    :goto_55
    :try_start_55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</i><br/><br/>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/EclipseJavaProject;->Mr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_8e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_c2

    if-eqz v3, :cond_81

    const-string v3, "&lt;无&gt;"

    goto :goto_83

    .line 99
    :cond_81
    const-string v3, "&lt;none&gt;"

    .line 0
    :goto_83
    :try_start_83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c1

    .line 99
    :cond_8e
    array-length v5, v4
    :try_end_8f
    .catchall {:try_start_83 .. :try_end_8f} :catchall_c2

    const/4 v6, 0x0

    :goto_90
    if-ge v6, v5, :cond_c0

    aget-object v7, v4, v6

    :try_start_94
    invoke-static {v7}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ab

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(NOT FOUND) "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_ab
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_bd
    .catchall {:try_start_94 .. :try_end_bd} :catchall_c2

    add-int/lit8 v6, v6, 0x1

    goto :goto_90

    :cond_c0
    move-object v0, v3

    :goto_c1
    return-object v0

    :catchall_c2
    move-exception v0

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_ca

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ca
    goto :goto_cc

    :goto_cb
    throw v0

    :goto_cc
    goto :goto_cb
.end method

.method public getTemplates()[Labcd/Sk$a;
    .registers 19

    move-object/from16 v13, p0

    const-wide v14, 0xfb25bf62f6372dfL

    :try_start_7
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v14, v15, v13}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v0, Labcd/Sk$b;

    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v1

    const/16 v16, 0x0

    const/4 v12, 0x1

    if-nez v1, :cond_27

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_27

    :cond_24
    const/16 v17, 0x0

    goto :goto_29

    :cond_27
    :goto_27
    const/16 v17, 0x1

    :goto_29
    const/4 v3, 0x3

    const-string v4, "Java Application"

    const-string v5, "Java"

    const-string v6, "MyJavaConsoleApp"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "JAVA"

    const-string v11, "course_java"

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v14, 0x1

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Labcd/Sk$b;-><init>(Labcd/IProject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Labcd/Sk$a;

    const-string v2, "Java Application"

    const v4, 0x7f070079

    const-string v5, "JavaConsole.zip"

    new-array v6, v14, [Ljava/lang/String;

    const-string v1, "Main.java"

    aput-object v1, v6, v16

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Labcd/Sk$a;-><init>(Ljava/lang/String;Labcd/Sk$b;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_5b

    new-array v0, v14, [Labcd/Sk$a;

    aput-object v8, v0, v16

    return-object v0

    :catchall_5b
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_68

    const-wide v1, 0xfb25bf62f6372dfL

    invoke-static {v0, v1, v2, v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public gn(Ljava/lang/String;)I
    .registers 6

    const-wide v0, -0xf0705906415db80L  # -1.5883964060574207E236

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const p1, 0x7f0d002e

    return p1

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j3(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x30185d60ecfdfe74L  # -8.55241810562289E76

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-wide v0, -0x3c134566b333d2c0L  # -1.6561084270817968E19

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/EclipseJavaProject;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    return-object p1

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-object p1

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0xcbd6be7c56780L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x19c0b18998b1bb3bL  # -3.3256136977311047E184

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1, p2}, Labcd/kj;->j6(Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_21

    const-wide v2, -0x19c0b18998b1bb3bL  # -3.3256136977311047E184

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x41762115ef57c73L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x41762115ef57c73L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x551183aad3f48dbfL  # -6.805613614857099E-102

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0x551183aad3f48dbfL  # -6.805613614857099E-102

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method public j6(Ljava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x3b852804065b915cL  # 5.600029003161947E-22

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x3b852804065b915cL  # 5.600029003161947E-22

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x5aea03b03ab5de4cL  # 9.016170013408818E129

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    sget-object v2, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/aide/ui/build/java/h;->j6(ZLjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "/"

    const-wide v1, -0x6156b66ce23e5110L  # -5.620779197035025E-161

    :try_start_7
    sget-boolean v3, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Labcd/EclipseJavaProject;->j6(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2f
    array-length v0, v3
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_50

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v0, :cond_4e

    aget-object v5, v3, v4

    :try_start_35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v6
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_50

    if-eqz v6, :cond_4b

    return-object v5

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_4e
    const/4 p1, 0x0

    return-object p1

    :catchall_50
    move-exception v0

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method public tp()Z
    .registers 5

    const-wide v0, 0x38a59ac34cc25df9L  # 8.126725666170314E-36

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x2438e03bd20aa357L  # -1.313084535130108E134

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7()V
    .registers 7

    const-wide v0, -0x3793a76ee56660L

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "large_project"

    const v5, 0x7f0d0611

    invoke-virtual {v2, v3, v5, v4}, Labcd/Ek;->j6(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public v5()Z
    .registers 5

    const-wide v0, -0x62643af89a34adc5L  # -4.70926051770557E-166

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public v5(Ljava/lang/String;)Z
    .registers 10

    const-wide v0, -0x14db8a4a4e409451L  # -1.3137371570344516E208

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v4

    :cond_30
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/EclipseJavaProject;->U2(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3f
    if-ge v6, v3, :cond_4d

    aget-object v7, v2, v6

    invoke-static {v7, p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_4e

    if-eqz v7, :cond_4a

    return v4

    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_4d
    return v5

    :catchall_4e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v2

    :goto_58
    goto :goto_57
.end method

.method public we()Z
    .registers 5

    const-wide v0, 0x454522326e9c2dfL

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public we(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x25d8a17fe6e451b8L  # 2.274161841293461E-126

    :try_start_5
    sget-boolean v2, Labcd/EclipseJavaProject;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/kj;->j6(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/EclipseJavaProject;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method
