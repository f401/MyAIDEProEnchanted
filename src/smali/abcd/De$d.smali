.class Labcd/De$d;
.super Ljava/lang/Object;

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
    name = "d"
.end annotation


# static fields
.field private static final DW:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x1a4f6623a6aa56dcL
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

.field private static final FH:Ljava/util/Properties;
    .annotation runtime Labcd/ru;
        field = 0x26236c2252e696a0L
    .end annotation
.end field

.field private static final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2ac5335b2c7a0c8dL
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2e0bd3024e3a982dL
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3b9e407fdc9088dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x32cc27422f00c054L
    .end annotation

    const-wide v8, 0x1a581bdb11f7d7b5L    # 9.078172460581671E-182

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/De$d;

    const-wide v2, -0xea76b87ec44acd5L    # -1.0003632176176884E238

    const-wide v4, -0xea76b87ec44acd5L    # -1.0003632176176884E238

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a581bdb11f7d7b5L    # 9.078172460581671E-182

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alpha"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "milestone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snapshot"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sp"

    aput-object v2, v0, v1

    sput-object v0, Labcd/De$d;->j6:[Ljava/lang/String;

    sget-object v0, Labcd/De$d;->j6:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Labcd/De$d;->DW:Ljava/util/List;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Labcd/De$d;->FH:Ljava/util/Properties;

    sget-object v0, Labcd/De$d;->FH:Ljava/util/Properties;

    const-string v1, "ga"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/De$d;->FH:Ljava/util/Properties;

    const-string v1, "final"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/De$d;->FH:Ljava/util/Properties;

    const-string v1, "cr"

    const-string v2, "rc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Labcd/De$d;->DW:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/De$d;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$d;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x9cf6285d09c5ccL
    .end annotation

    const-wide v2, 0x21865d833fbfda1cL    # 3.498215384181636E-147

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0x21865d833fbfda1cL    # 3.498215384181636E-147

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_4

    const/16 v1, 0x62

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    sget-object v0, Labcd/De$d;->FH:Ljava/util/Properties;

    invoke-virtual {v0, p1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/De$d;->VH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    const-string p1, "milestone"

    goto :goto_0

    :cond_3
    const-string p1, "beta"

    goto :goto_0

    :cond_4
    const-string p1, "alpha"

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, p1

    sget-boolean v0, Labcd/De$d;->Zo:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4d4f7e49ea8550a7L
    .end annotation

    const-wide v4, 0x6613e2224dcc5eafL    # 5.280397569766125E183

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6613e2224dcc5eafL    # 5.280397569766125E183

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/De$d;->DW:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labcd/De$d;->DW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$d;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getType()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd9d05449c9ac75bL
    .end annotation

    const-wide v2, -0x2477749c28ed0de9L    # -8.71088251539026E132

    :try_start_0
    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2477749c28ed0de9L    # -8.71088251539026E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$d;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/De$b;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x48a23df1a207247L
    .end annotation

    const-wide v6, 0xf5ecd212e7ee269L

    const/4 v2, -0x1

    :try_start_0
    sget-boolean v3, Labcd/De$d;->v5:Z

    if-eqz v3, :cond_0

    const-wide v4, 0xf5ecd212e7ee269L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Labcd/De$d;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {p1}, Labcd/De$b;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

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

    sget-boolean v3, Labcd/De$d;->Zo:Z

    if-eqz v3, :cond_3

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v2

    :cond_4
    :try_start_1
    iget-object v2, p0, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Labcd/De$d;

    move-object v2, v0

    iget-object v2, v2, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x229252c46728f7e8L
    .end annotation

    const-wide v2, -0xaf3c47233bdcb80L

    :try_start_0
    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xaf3c47233bdcb80L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v0}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Labcd/De$d;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
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

    sget-boolean v1, Labcd/De$d;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1cf852a25035b543L
    .end annotation

    const-wide v2, -0x87768d63338c315L    # -6.343269985037389E267

    :try_start_0
    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x87768d63338c315L    # -6.343269985037389E267

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/De$d;->VH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/De$d;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
