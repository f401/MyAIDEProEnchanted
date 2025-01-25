.class public final Lr/g;
.super Lc/m;
.source "SourceFile"

# interfaces
.implements Lc/d;


# instance fields
.field public a:Lc/s;


# direct methods
.method public constructor <init>(Lc/s;)V
    .registers 3

    invoke-direct {p0}, Lc/m;-><init>()V

    instance-of v0, p1, Lc/aa;

    if-nez v0, :cond_14

    instance-of v0, p1, Lc/i;

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object passed to Time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    iput-object p1, p0, Lr/g;->a:Lc/s;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 7

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x79e

    if-lt v0, v1, :cond_45

    const/16 v1, 0x801

    if-le v0, v1, :cond_3a

    goto :goto_45

    :cond_3a
    new-instance v0, Lc/bg;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/bg;-><init>(Ljava/lang/String;)V

    goto :goto_4a

    :cond_45
    :goto_45
    new-instance v0, Lc/au;

    invoke-direct {v0, p1}, Lc/au;-><init>(Ljava/lang/String;)V

    :goto_4a
    iput-object v0, p0, Lr/g;->a:Lc/s;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lr/g;
    .registers 2

    if-eqz p0, :cond_3a

    instance-of v0, p0, Lr/g;

    if-eqz v0, :cond_7

    goto :goto_3a

    :cond_7
    instance-of v0, p0, Lc/aa;

    if-eqz v0, :cond_13

    new-instance v0, Lr/g;

    check-cast p0, Lc/aa;

    invoke-direct {v0, p0}, Lr/g;-><init>(Lc/s;)V

    return-object v0

    :cond_13
    instance-of v0, p0, Lc/i;

    if-eqz v0, :cond_1f

    new-instance v0, Lr/g;

    check-cast p0, Lc/i;

    invoke-direct {v0, p0}, Lr/g;-><init>(Lc/s;)V

    return-object v0

    .line 1
    :cond_1f
    const-string v0, "unknown object in factory: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    :goto_3a
    check-cast p0, Lr/g;

    return-object p0
.end method


# virtual methods
.method public final l()Lc/s;
    .registers 2

    iget-object v0, p0, Lr/g;->a:Lc/s;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lr/g;->a:Lc/s;

    instance-of v1, v0, Lc/aa;

    if-eqz v1, :cond_2f

    check-cast v0, Lc/aa;

    .line 2
    invoke-virtual {v0}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-ge v1, v2, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "20"

    goto :goto_24

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "19"

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 3
    :cond_2f
    check-cast v0, Lc/i;

    invoke-virtual {v0}, Lc/i;->h()Ljava/lang/String;

    move-result-object v0

    :goto_35
    return-object v0
.end method
