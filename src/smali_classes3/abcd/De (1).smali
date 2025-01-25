.class Labcd/De;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/De$a;,
        Labcd/De$b;,
        Labcd/De$c;,
        Labcd/De$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/De;",
        ">;"
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


# instance fields
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x13c466c7712d7c11L
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x312b04fb7ef6e7ccL
    .end annotation
.end field

.field private v5:Labcd/De$c;
    .annotation runtime Labcd/ru;
        field = -0x1acd9eb4aef18598L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/De;

    const-wide v1, -0x1443b7e0691e26b7L  # -9.297859620873464E210

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x163102d5605c4b9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x500a22c3b4972599L  # -1.1801432969275643E-77

    :try_start_6
    sget-boolean v3, Labcd/De;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Labcd/De;->j6(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Labcd/De;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method private static j6(ZLjava/lang/String;)Labcd/De$b;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x27e83f15af20d124L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/De;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1049466cf4fc440L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    if-eqz p0, :cond_1a

    new-instance v0, Labcd/De$a;

    invoke-direct {v0, p1}, Labcd/De$a;-><init>(Ljava/lang/String;)V

    goto :goto_20

    :cond_1a
    new-instance v0, Labcd/De$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Labcd/De$d;-><init>(Ljava/lang/String;Z)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    :goto_20
    return-object v0

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/De;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x1049466cf4fc440L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/De;

    invoke-virtual {p0, p1}, Labcd/De;->j6(Labcd/De;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x994c2fb9b607523L
    .end annotation

    const-wide v0, -0x1dd209685cd6345L  # -3.949660923150768E299

    :try_start_5
    sget-boolean v2, Labcd/De;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/De;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Labcd/De;->Hw:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Labcd/De;

    iget-object v3, v3, Labcd/De;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/De;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public hashCode()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x8ab12fa7a804760L
    .end annotation

    const-wide v0, -0x60b652c6e1838dcL

    :try_start_5
    sget-boolean v2, Labcd/De;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/De;->Hw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/De;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(Labcd/De;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x9a8524fd54b1a5cL
    .end annotation

    const-wide v0, 0x95ca89d55831200L

    :try_start_5
    sget-boolean v2, Labcd/De;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/De;->v5:Labcd/De$c;

    iget-object v3, p1, Labcd/De;->v5:Labcd/De$c;

    invoke-virtual {v2, v3}, Labcd/De$c;->j6(Labcd/De$b;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/De;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x22ff6eb3401c48f8L
    .end annotation

    const-wide v0, 0x1e0092a2b4182500L  # 3.597395062646839E-164

    :try_start_5
    sget-boolean v2, Labcd/De;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/De;->FH:Ljava/lang/String;

    new-instance v2, Labcd/De$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Labcd/De$c;-><init>(Labcd/Ce;)V

    iput-object v2, p0, Labcd/De;->v5:Labcd/De$c;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Labcd/De;->v5:Labcd/De$c;

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_b8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_4d

    if-ne v6, v7, :cond_40

    sget-object v7, Labcd/De$a;->DW:Labcd/De$a;

    :goto_3c
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_40
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v7

    goto :goto_3c

    :goto_49
    add-int/lit8 v7, v6, 0x1

    goto/16 :goto_b4

    :cond_4d
    const/16 v10, 0x2d

    if-ne v9, v10, :cond_71

    if-ne v6, v7, :cond_59

    sget-object v7, Labcd/De$a;->DW:Labcd/De$a;

    :goto_55
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_59
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v7

    goto :goto_55

    :goto_62
    add-int/lit8 v7, v6, 0x1

    new-instance v9, Labcd/De$c;

    invoke-direct {v9, v3}, Labcd/De$c;-><init>(Labcd/Ce;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    goto :goto_b4

    :cond_71
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_97

    if-nez v8, :cond_95

    if-le v6, v7, :cond_95

    new-instance v8, Labcd/De$d;

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v10}, Labcd/De$d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Labcd/De$c;

    invoke-direct {v7, v3}, Labcd/De$c;-><init>(Labcd/Ce;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v7

    move v7, v6

    :cond_95
    const/4 v8, 0x1

    goto :goto_b4

    :cond_97
    if-eqz v8, :cond_b3

    if-le v6, v7, :cond_b3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Labcd/De$c;

    invoke-direct {v7, v3}, Labcd/De$c;-><init>(Labcd/Ce;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v7

    move v7, v6

    :cond_b3
    const/4 v8, 0x0

    :goto_b4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2a

    :cond_b8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_c9

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Labcd/De;->j6(ZLjava/lang/String;)Labcd/De$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    :goto_c9
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d9

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/De$c;

    invoke-virtual {v2}, Labcd/De$c;->DW()V

    goto :goto_c9

    :cond_d9
    iget-object v2, p0, Labcd/De;->v5:Labcd/De$c;

    invoke-virtual {v2}, Labcd/De$c;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/De;->Hw:Ljava/lang/String;
    :try_end_e1
    .catchall {:try_start_5 .. :try_end_e1} :catchall_e2

    return-void

    :catchall_e2
    move-exception v2

    sget-boolean v3, Labcd/De;->DW:Z

    if-eqz v3, :cond_ea

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ea
    goto :goto_ec

    :goto_eb
    throw v2

    :goto_ec
    goto :goto_eb
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x314d2c83dd49311L
    .end annotation

    const-wide v0, 0x4f215ebdd4f2b55L

    :try_start_5
    sget-boolean v2, Labcd/De;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/De;->FH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/De;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
