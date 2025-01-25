.class Lcom/crashlytics/android/core/Ja;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/Qa;


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/core/Ja;->j6:I

    return-void
.end method

.method private static j6([Ljava/lang/StackTraceElement;II)Z
    .registers 8

    sub-int v0, p2, p1

    add-int v1, p2, v0

    array-length v2, p0

    const/4 v3, 0x0

    if-le v1, v2, :cond_9

    return v3

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1e

    add-int v2, p1, v1

    aget-object v2, p0, v2

    add-int v4, p2, v1

    aget-object v4, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private static j6([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .registers 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_d
    array-length v7, p0

    if-ge v4, v7, :cond_49

    aget-object v7, p0, v4

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p0, v9, v4}, Lcom/crashlytics/android/core/Ja;->j6([Ljava/lang/StackTraceElement;II)Z

    move-result v9

    if-nez v9, :cond_25

    goto :goto_37

    :cond_25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v4, v8

    if-ge v6, p1, :cond_33

    invoke-static {p0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    :cond_33
    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v4

    goto :goto_3f

    :cond_37
    :goto_37
    aget-object v6, p0, v4

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v8, v4

    const/4 v6, 0x1

    :goto_3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v8, 0x1

    goto :goto_d

    :cond_49
    new-array p0, v5, [Ljava/lang/StackTraceElement;

    invoke-static {v1, v2, p0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public j6([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .registers 5

    iget v0, p0, Lcom/crashlytics/android/core/Ja;->j6:I

    invoke-static {p1, v0}, Lcom/crashlytics/android/core/Ja;->j6([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return-object v0

    :cond_b
    return-object p1
.end method
