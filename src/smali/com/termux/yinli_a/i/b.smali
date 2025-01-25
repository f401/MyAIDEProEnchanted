.class public final Lcom/termux/yinli_a/i/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/termux/yinli_a/i/a;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    invoke-static {}, Lcom/termux/yinli_a/i/b;->a()I

    move-result v0

    const v1, 0x10008

    const-string v2, "ClassCastException(\"Inst…baseTypeCL\").initCause(e)"

    const-string v3, ", base type classloader: "

    const-string v4, "Instance classloader: "

    const-string v5, "null cannot be cast to non-null type kotlin.internal.PlatformImplementations"

    const-string v6, "Class.forName(\"kotlin.in…entations\").newInstance()"

    if-lt v0, v1, :cond_a3

    :try_start_13
    const-string v1, "kotlin.internal.jdk8.JDK8PlatformImplementations"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_20} :catch_5a

    if-eqz v1, :cond_26

    :try_start_22
    check-cast v1, Lcom/termux/yinli_a/i/a;

    goto/16 :goto_13e

    :cond_26
    new-instance v7, Lcom/termux/yinli_a/f;

    invoke-direct {v7, v5}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2c
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_2c} :catch_5a

    :catch_2c
    move-exception v7

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v8, Lcom/termux/yinli_a/i/a;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Ljava/lang/ClassCastException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string v1, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_68} :catch_a2

    if-eqz v1, :cond_6e

    :try_start_6a
    check-cast v1, Lcom/termux/yinli_a/i/a;

    goto/16 :goto_13e

    :cond_6e
    new-instance v7, Lcom/termux/yinli_a/f;

    invoke-direct {v7, v5}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_74} :catch_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_74} :catch_a2

    :catch_74
    move-exception v7

    :try_start_75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v8, Lcom/termux/yinli_a/i/a;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-instance v9, Ljava/lang/ClassCastException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_a2} :catch_a2

    :catch_a2
    move-exception v1

    :cond_a3
    const v1, 0x10007

    if-lt v0, v1, :cond_139

    :try_start_a8
    const-string v0, "com.termux.yinli_a.i.d.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a8 .. :try_end_b5} :catch_f0

    if-eqz v0, :cond_bc

    :try_start_b7
    move-object v1, v0

    check-cast v1, Lcom/termux/yinli_a/i/a;

    goto/16 :goto_13e

    :cond_bc
    new-instance v1, Lcom/termux/yinli_a/f;

    invoke-direct {v1, v5}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c2
    .catch Ljava/lang/ClassCastException; {:try_start_b7 .. :try_end_c2} :catch_c2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b7 .. :try_end_c2} :catch_f0

    :catch_c2
    move-exception v1

    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v7, Lcom/termux/yinli_a/i/a;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/ClassCastException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_f0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c3 .. :try_end_f0} :catch_f0

    :catch_f0
    move-exception v0

    :try_start_f1
    const-string v0, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f1 .. :try_end_fe} :catch_138

    if-eqz v0, :cond_104

    :try_start_100
    move-object v1, v0

    check-cast v1, Lcom/termux/yinli_a/i/a;

    goto :goto_13e

    :cond_104
    new-instance v1, Lcom/termux/yinli_a/f;

    invoke-direct {v1, v5}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10a
    .catch Ljava/lang/ClassCastException; {:try_start_100 .. :try_end_10a} :catch_10a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_100 .. :try_end_10a} :catch_138

    :catch_10a
    move-exception v1

    :try_start_10b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v5, Lcom/termux/yinli_a/i/a;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/ClassCastException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/ClassCastException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
    :try_end_138
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10b .. :try_end_138} :catch_138

    :catch_138
    move-exception v0

    :cond_139
    new-instance v1, Lcom/termux/yinli_a/i/a;

    invoke-direct {v1}, Lcom/termux/yinli_a/i/a;-><init>()V

    :goto_13e
    sput-object v1, Lcom/termux/yinli_a/i/b;->a:Lcom/termux/yinli_a/i/a;

    return-void
.end method

.method private static final a()I
    .registers 10

    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/termux/yinli_a/n/e;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    const/high16 v8, 0x10000

    if-gez v7, :cond_20

    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_1e

    mul-int v0, v0, v8

    goto :goto_65

    :catch_1e
    move-exception v0

    goto :goto_62

    :cond_20
    add-int/lit8 v9, v7, 0x1

    const/16 v2, 0x2e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move v3, v9

    invoke-static/range {v1 .. v6}, Lcom/termux/yinli_a/n/e;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_33
    const-string v2, "null cannot be cast to non-null type java.lang.String"

    if-eqz v0, :cond_5c

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_56

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_4a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_52} :catch_1e

    mul-int v1, v1, v8

    add-int/2addr v0, v1

    goto :goto_65

    :cond_56
    new-instance v0, Lcom/termux/yinli_a/f;

    invoke-direct {v0, v2}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Lcom/termux/yinli_a/f;

    invoke-direct {v0, v2}, Lcom/termux/yinli_a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    :goto_62
    const v0, 0x10006

    :goto_65
    return v0
.end method
