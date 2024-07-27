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
    .registers 4

    const-wide v2, -0x535a88ae3f2610fdL    # -1.2863653328677867E-93

    const-class v0, Labcd/Ji$e;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2fe963b1e565740L
    .end annotation

    const-wide v2, -0x27684bcdeb9728f0L    # -5.977477039370409E118

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ji$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27684bcdeb9728f0L    # -5.977477039370409E118

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji$e;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x6b8a5b1d0bc4c10L
    .end annotation

    const-wide v8, 0x14b8aec27c941a0L

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Ji$e;->j6:Z

    if-eqz v2, :cond_0

    const-wide v6, 0x14b8aec27c941a0L

    invoke-static {v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v2, v5, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Labcd/Ji$e;

    move-object v2, v0

    iget-object v5, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v5, v2, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-eqz v5, :cond_5

    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v5, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;

    iget-object v6, v2, Labcd/Ji$e;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v5, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-object v2, v2, Labcd/Ji$e;->FH:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_6
    iget-object v5, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v2, v2, Labcd/Ji$e;->FH:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Ji$e;->DW:Z

    if-eqz v3, :cond_8

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v2
.end method

.method public hashCode()I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1400cf42a21a4069L
    .end annotation

    const-wide v4, 0x77299a83bcf2179L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ji$e;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x77299a83bcf2179L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Labcd/Ji$e;->Hw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji$e;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/Ji$e;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xed6671dc2a00de5L
    .end annotation

    const-wide v2, 0x6831a7507cd3b85L

    :try_start_0
    sget-boolean v0, Labcd/Ji$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6831a7507cd3b85L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v1, p1, Labcd/Ji$e;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji$e;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
