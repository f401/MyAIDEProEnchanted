.class abstract Lorg/apache/commons/lang3/time/FormatCache;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/text/Format;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NONE:I = -0x1

.field private static final cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 118
    invoke-static {p4}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 119
    invoke-static {p1, p2, v0}, Lorg/apache/commons/lang3/time/FormatCache;->getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p0, v1, p3, v0}, Lorg/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method static getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    .line 186
    invoke-static {p2}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 187
    new-instance v3, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;-><init>([Ljava/lang/Object;)V

    .line 189
    sget-object v4, Lorg/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    if-nez v0, :cond_37

    .line 193
    if-nez p0, :cond_38

    .line 194
    :try_start_21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 200
    :goto_29
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-interface {v4, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    if-eqz v0, :cond_68

    .line 212
    :cond_37
    :goto_37
    return-object v0

    .line 195
    :cond_38
    if-nez p1, :cond_43

    .line 196
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_29

    .line 198
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_4e} :catch_50

    move-result-object v0

    goto :goto_29

    .line 208
    :catch_50
    move-exception v0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No date time pattern for locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    move-object v0, v1

    goto :goto_37
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation
.end method

.method getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/text/Format;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    const/4 v2, 0x3

    .line 55
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 71
    const-string v0, "pattern"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    if-nez p2, :cond_e

    .line 73
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 75
    :cond_e
    invoke-static {p3}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 76
    new-instance v2, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v3, 0x1

    aput-object p2, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-direct {v2, v0}, Lorg/apache/commons/lang3/time/FormatCache$ArrayKey;-><init>([Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .line 78
    if-nez v0, :cond_3a

    .line 79
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang3/time/FormatCache;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .line 81
    if-eqz v0, :cond_3b

    .line 87
    :cond_3a
    :goto_3a
    return-object v0

    :cond_3b
    move-object v0, v1

    goto :goto_3a
.end method

.method getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method
