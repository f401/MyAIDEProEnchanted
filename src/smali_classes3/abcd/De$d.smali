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
            "Ljava/util/List<",
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
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x32cc27422f00c054L
    .end annotation

    const-string v0, "rc"

    const-string v1, ""

    const/4 v2, 0x0

    const-wide v3, 0x1a581bdb11f7d7b5L  # 9.078172460581671E-182

    :try_start_a
    const-class v5, Labcd/De$d;

    const-wide v6, -0xea76b87ec44acd5L  # -1.0003632176176884E238

    invoke-static {v5, v6, v7, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v5, Labcd/De$d;->v5:Z

    if-eqz v5, :cond_1b

    invoke-static {v3, v4, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1b
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "alpha"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "beta"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "milestone"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const-string v6, "snapshot"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const/4 v6, 0x5

    aput-object v1, v5, v6

    const-string v6, "sp"

    const/4 v7, 0x6

    aput-object v6, v5, v7

    sput-object v5, Labcd/De$d;->j6:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Labcd/De$d;->DW:Ljava/util/List;

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    sput-object v6, Labcd/De$d;->FH:Ljava/util/Properties;

    const-string v7, "ga"

    invoke-virtual {v6, v7, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "final"

    invoke-virtual {v6, v7, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "cr"

    invoke-virtual {v6, v7, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/De$d;->Hw:Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    sget-boolean v1, Labcd/De$d;->Zo:Z

    if-eqz v1, :cond_6e

    invoke-static {v0, v3, v4, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6e
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9cf6285d09c5ccL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/De$d;->v5:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x21865d833fbfda1cL  # 3.498215384181636E-147

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_41

    const/16 v1, 0x61

    if-eq v0, v1, :cond_36

    const/16 v1, 0x62

    if-eq v0, v1, :cond_33

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_30

    goto :goto_38

    :cond_30
    const-string p1, "milestone"

    goto :goto_38

    :cond_33
    const-string p1, "beta"

    goto :goto_38

    :cond_36
    const-string p1, "alpha"

    :cond_38
    :goto_38
    :try_start_38
    sget-object v0, Labcd/De$d;->FH:Ljava/util/Properties;

    invoke-virtual {v0, p1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/De$d;->VH:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v0

    move-object v5, p1

    sget-boolean p1, Labcd/De$d;->Zo:Z

    if-eqz p1, :cond_56

    const-wide v2, 0x21865d833fbfda1cL  # 3.498215384181636E-147

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v0
.end method

.method public static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4d4f7e49ea8550a7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6613e2224dcc5eafL  # 5.280397569766125E183

    :try_start_6
    sget-boolean v3, Labcd/De$d;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/De$d;->DW:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_2f
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    :goto_33
    return-object p0

    :catchall_34
    move-exception v3

    sget-boolean v4, Labcd/De$d;->Zo:Z

    if-eqz v4, :cond_3c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v3
.end method


# virtual methods
.method public getType()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd9d05449c9ac75bL
    .end annotation

    const-wide v0, -0x2477749c28ed0de9L  # -8.71088251539026E132

    :try_start_5
    sget-boolean v2, Labcd/De$d;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/De$d;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public j6(Labcd/De$b;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x48a23df1a207247L
    .end annotation

    const-wide v0, 0xf5ecd212e7ee269L

    :try_start_5
    sget-boolean v2, Labcd/De$d;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_1b

    iget-object v2, p0, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Labcd/De$d;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1b
    invoke-interface {p1}, Labcd/De$b;->getType()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_58

    const/4 v4, 0x1

    if-eq v2, v4, :cond_44

    const/4 v4, 0x2

    if-ne v2, v4, :cond_29

    return v3

    :cond_29
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

    :cond_44
    iget-object v2, p0, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Labcd/De$d;

    iget-object v3, v3, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v3}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_59

    return p1

    :cond_58
    return v3

    :catchall_59
    move-exception v2

    sget-boolean v3, Labcd/De$d;->Zo:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v2
.end method

.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x229252c46728f7e8L
    .end annotation

    const-wide v0, -0xaf3c47233bdcb80L

    :try_start_5
    sget-boolean v2, Labcd/De$d;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/De$d;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/De$d;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Labcd/De$d;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/De$d;->Zo:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1cf852a25035b543L
    .end annotation

    const-wide v0, -0x87768d63338c315L  # -6.343269985037389E267

    :try_start_5
    sget-boolean v2, Labcd/De$d;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/De$d;->VH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/De$d;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
