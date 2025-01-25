.class public Labcd/Fe;
.super Ljava/lang/Object;


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


# instance fields
.field private FH:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = 0x352acbd4a82a3203L
    .end annotation
.end field

.field private Hw:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = 0xb01f18fc9ac7d3L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2aa7535a5d746180L
    .end annotation
.end field

.field private Zo:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = 0x2c39c2409276532bL
    .end annotation
.end field

.field private gn:Labcd/De;
    .annotation runtime Labcd/ru;
        field = -0x98360d14ea4af30L
    .end annotation
.end field

.field private v5:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = -0x2e5cfef241fa4fc0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Fe;

    const-wide v1, -0x175bb9268e081b5L  # -3.518204381760006E301

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x32f400dc7db88f2fL  # -1.4396434820247882E63

    :try_start_6
    sget-boolean v3, Labcd/Fe;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Labcd/Fe;->j6(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Labcd/Fe;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/Fe;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xc74e3e9d4b27d00L  # -3.790978875601194E248

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Labcd/Fe;

    invoke-direct {v0, p0}, Labcd/Fe;-><init>(Ljava/lang/String;)V

    new-instance v1, Labcd/Fe;

    invoke-direct {v1, p1}, Labcd/Fe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Labcd/Fe;->j6(Labcd/Fe;)I

    move-result p0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return p0

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Fe;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0xc74e3e9d4b27d00L  # -3.790978875601194E248

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method private static j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2fe7f07055382e0dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x92497527ae32367L

    :try_start_6
    sget-boolean v3, Labcd/Fe;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_4b

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3d

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_3d

    :cond_21
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number part has a leading 0: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3d
    :goto_3d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_41
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_41} :catch_42
    .catchall {:try_start_d .. :try_end_41} :catchall_4b

    return-object p0

    :catch_42
    move-exception v3

    :try_start_43
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Number is invalid"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v3

    sget-boolean v4, Labcd/Fe;->DW:Z

    if-eqz v4, :cond_53

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const-wide v0, -0xbc4ab9b1a68b01L

    :try_start_5
    sget-boolean v2, Labcd/Fe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    if-ne p0, p1, :cond_10

    return v2

    :cond_10
    instance-of v3, p1, Labcd/Fe;

    const/4 v4, 0x0

    if-nez v3, :cond_16

    return v4

    :cond_16
    move-object v3, p1

    check-cast v3, Labcd/Fe;

    invoke-virtual {p0, v3}, Labcd/Fe;->j6(Labcd/Fe;)I

    move-result p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_22

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Fe;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public hashCode()I
    .registers 5

    const-wide v0, 0x2016cf17e06a8e8cL

    :try_start_5
    sget-boolean v2, Labcd/Fe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fe;->gn:Labcd/De;

    invoke-virtual {v2}, Labcd/De;->hashCode()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_15

    add-int/lit8 v0, v0, 0xb

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Fe;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Labcd/Fe;)I
    .registers 6

    const-wide v0, -0x3d42547d57708d8L  # -1.357248040444478E290

    :try_start_5
    sget-boolean v2, Labcd/Fe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/Fe;

    if-eqz v2, :cond_19

    iget-object v2, p0, Labcd/Fe;->gn:Labcd/De;

    iget-object v3, p1, Labcd/Fe;->gn:Labcd/De;

    invoke-virtual {v2, v3}, Labcd/De;->j6(Labcd/De;)I

    move-result p1

    return p1

    :cond_19
    new-instance v2, Labcd/Fe;

    invoke-virtual {p1}, Labcd/Fe;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Labcd/Fe;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Labcd/Fe;->j6(Labcd/Fe;)I

    move-result p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return p1

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/Fe;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 12

    const-string v0, "."

    const-wide v1, -0x3fc2df2b1e0c58L

    :try_start_7
    sget-boolean v3, Labcd/Fe;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    new-instance v3, Labcd/De;

    invoke-direct {v3, p1}, Labcd/De;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Labcd/Fe;->gn:Labcd/De;

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v3, :cond_23

    move-object v7, p1

    move-object v3, v6

    goto :goto_2c

    :cond_23
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_c6

    :goto_2c
    const-string v8, "0"

    if-eqz v3, :cond_4a

    :try_start_30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v5, :cond_40

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3d

    goto :goto_40

    :cond_3d
    iput-object v3, p0, Labcd/Fe;->VH:Ljava/lang/String;

    goto :goto_4a

    :cond_40
    :goto_40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Labcd/Fe;->Zo:Ljava/lang/Integer;
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_46} :catch_47
    .catchall {:try_start_30 .. :try_end_46} :catchall_c6

    goto :goto_4a

    :catch_47
    move-exception v9

    :try_start_48
    iput-object v3, p0, Labcd/Fe;->VH:Ljava/lang/String;

    :cond_4a
    :goto_4a
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_c6

    if-nez v3, :cond_63

    :try_start_56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Labcd/Fe;->FH:Ljava/lang/Integer;
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5c} :catch_5d
    .catchall {:try_start_56 .. :try_end_5c} :catchall_c6

    goto :goto_c5

    :catch_5d
    move-exception v0

    :try_start_5e
    iput-object p1, p0, Labcd/Fe;->VH:Ljava/lang/String;

    :goto_60
    iput-object v6, p0, Labcd/Fe;->Zo:Ljava/lang/Integer;

    goto :goto_c5

    :cond_63
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v7, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_c6

    :try_start_68
    invoke-static {v3}, Labcd/Fe;->j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Labcd/Fe;->FH:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-static {v3}, Labcd/Fe;->j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Labcd/Fe;->Hw:Ljava/lang/Integer;

    :cond_7a
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-static {v3}, Labcd/Fe;->j6(Ljava/util/StringTokenizer;)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Labcd/Fe;->v5:Ljava/lang/Integer;

    :cond_86
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_a2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Labcd/Fe;->VH:Ljava/lang/String;

    const-string v3, "\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Labcd/Fe;->VH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    :cond_a2
    const-string v3, ".."

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ba

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ba

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_b4} :catch_b9
    .catchall {:try_start_68 .. :try_end_b4} :catchall_c6

    if-eqz v0, :cond_b7

    goto :goto_ba

    :cond_b7
    move v5, v4

    goto :goto_ba

    :catch_b9
    move-exception v0

    :cond_ba
    :goto_ba
    if-eqz v5, :cond_c5

    :try_start_bc
    iput-object p1, p0, Labcd/Fe;->VH:Ljava/lang/String;

    iput-object v6, p0, Labcd/Fe;->FH:Ljava/lang/Integer;

    iput-object v6, p0, Labcd/Fe;->Hw:Ljava/lang/Integer;

    iput-object v6, p0, Labcd/Fe;->v5:Ljava/lang/Integer;
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_c6

    goto :goto_60

    :cond_c5
    :goto_c5
    return-void

    :catchall_c6
    move-exception v0

    sget-boolean v3, Labcd/Fe;->DW:Z

    if-eqz v3, :cond_ce

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ce
    goto :goto_d0

    :goto_cf
    throw v0

    :goto_d0
    goto :goto_cf
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x2acbeb4a59611f41L

    :try_start_5
    sget-boolean v2, Labcd/Fe;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Fe;->gn:Labcd/De;

    invoke-virtual {v2}, Labcd/De;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Fe;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method
