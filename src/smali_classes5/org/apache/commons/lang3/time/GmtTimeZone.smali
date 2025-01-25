.class Lorg/apache/commons/lang3/time/GmtTimeZone;
.super Ljava/util/TimeZone;
.source "GmtTimeZone.java"


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MILLISECONDS_PER_MINUTE:I = 0xea60

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final offset:I

.field private final zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(ZII)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 40
    const/16 v0, 0x18

    if-ge p2, v0, :cond_58

    .line 43
    const/16 v0, 0x3c

    if-ge p3, v0, :cond_41

    .line 46
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    const v1, 0xea60

    mul-int/2addr v0, v1

    .line 47
    if-eqz p1, :cond_15

    neg-int v0, v0

    :cond_15
    iput v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    const-string v0, "GMT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3e

    const/16 v0, 0x2d

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, p2}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {v0, p3}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    .line 52
    return-void

    .line 49
    :cond_3e
    const/16 v0, 0x2b

    goto :goto_27

    .line 44
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minutes out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hours out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 3

    .line 55
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 100
    instance-of v1, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    if-nez v1, :cond_6

    .line 103
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .registers 8

    .line 60
    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public getRawOffset()I
    .registers 2

    .line 70
    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 95
    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 3

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public setRawOffset(I)V
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GmtTimeZone id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method
