.class public final Lr/g;
.super Lc/m;
.source "SourceFile"

# interfaces
.implements Lc/d;


# instance fields
.field public a:Lc/s;


# direct methods
.method public constructor <init>(Lc/s;)V
    .locals 2

    invoke-direct {p0}, Lc/m;-><init>()V

    instance-of v0, p1, Lc/aa;

    if-nez v0, :cond_0

    instance-of v0, p1, Lc/i;

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lr/g;->a:Lc/s;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object passed to Time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lc/m;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "Z"

    invoke-direct {v0, v3, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x79e

    if-lt v0, v2, :cond_0

    const/16 v2, 0x801

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v0, Lc/au;

    invoke-direct {v0, v1}, Lc/au;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lr/g;->a:Lc/s;

    return-void

    :cond_1
    new-instance v0, Lc/bg;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/bg;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Lr/g;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lr/g;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    check-cast p0, Lr/g;

    :goto_0
    return-object p0

    .line 4294967295
    :cond_1
    instance-of v0, p0, Lc/aa;

    if-eqz v0, :cond_2

    new-instance v0, Lr/g;

    check-cast p0, Lc/aa;

    invoke-direct {v0, p0}, Lr/g;-><init>(Lc/s;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lc/i;

    if-eqz v0, :cond_3

    new-instance v0, Lr/g;

    check-cast p0, Lc/i;

    invoke-direct {v0, p0}, Lr/g;-><init>(Lc/s;)V

    move-object p0, v0

    goto :goto_0

    .line 1
    :cond_3
    const-string v0, "unknown object in factory: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final l()Lc/s;
    .locals 1

    iget-object v0, p0, Lr/g;->a:Lc/s;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lr/g;->a:Lc/s;

    instance-of v1, v0, Lc/aa;

    if-eqz v1, :cond_1

    check-cast v0, Lc/aa;

    .line 2
    invoke-virtual {v0}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "20"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_1
    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "19"

    goto :goto_0

    .line 3
    :cond_1
    check-cast v0, Lc/i;

    invoke-virtual {v0}, Lc/i;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
