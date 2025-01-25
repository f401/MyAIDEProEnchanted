.class Labcd/Ji$e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
.field public FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3bb7a74c59147db5L
    .end annotation
.end field

.field public Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x57fbbb89b4aca588L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ji$e;

    const-wide v1, -0x535a88ae3f2610fdL  # -1.2863653328677867E-93

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2fe963b1e565740L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji$e;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x27684bcdeb9728f0L  # -5.977477039370409E118

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Ji$e;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x27684bcdeb9728f0L  # -5.977477039370409E118

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x6b8a5b1d0bc4c10L
    .end annotation

    const-wide v0, 0x14b8aec27c941a0L

    :try_start_5
    sget-boolean v2, Labcd/Ji$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    if-ne p0, p1, :cond_10

    return v2

    :cond_10
    const/4 v3, 0x0

    if-nez p1, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1f

    return v3

    :cond_1f
    move-object v4, p1

    check-cast v4, Labcd/Ji$e;

    iget-object v5, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-nez v5, :cond_2b

    iget-object v5, v4, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-eqz v5, :cond_34

    return v3

    :cond_2b
    iget-object v6, v4, Labcd/Ji$e;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    return v3

    :cond_34
    iget-object v5, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    if-nez v5, :cond_3d

    iget-object p1, v4, Labcd/Ji$e;->FH:Ljava/lang/String;

    if-eqz p1, :cond_46

    return v3

    :cond_3d
    iget-object v4, v4, Labcd/Ji$e;->FH:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_47

    if-nez p1, :cond_46

    return v3

    :cond_46
    return v2

    :catchall_47
    move-exception v2

    sget-boolean v3, Labcd/Ji$e;->DW:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public hashCode()I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1400cf42a21a4069L
    .end annotation

    const-wide v0, 0x77299a83bcf2179L

    :try_start_5
    sget-boolean v2, Labcd/Ji$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    iget-object v4, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    if-nez v4, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    :goto_20
    add-int/lit8 v2, v2, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    return v2

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Ji$e;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(Labcd/Ji$e;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xed6671dc2a00de5L
    .end annotation

    const-wide v0, 0x6831a7507cd3b85L

    :try_start_5
    sget-boolean v2, Labcd/Ji$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v3, p1, Labcd/Ji$e;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ji$e;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
