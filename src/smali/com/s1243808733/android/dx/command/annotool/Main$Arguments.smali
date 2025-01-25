.class Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/annotool/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field aclass:Ljava/lang/String;

.field eTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljava/lang/annotation/ElementType;",
            ">;"
        }
    .end annotation
.end field

.field files:[Ljava/lang/String;

.field printTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    .line 54
    const-class v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method parse([Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_af

    .line 64
    aget-object v2, p1, v1

    .line 66
    const-string v3, "--annotation="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x3d

    if-eqz v3, :cond_32

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    if-nez v3, :cond_2a

    .line 72
    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    goto :goto_99

    .line 69
    :cond_2a
    new-instance p1, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v0, "--annotation can only be specified once."

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_32
    const-string v3, "--element="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v5, ","

    if-eqz v3, :cond_6b

    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    :try_start_46
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4b} :catch_62

    const/4 v4, 0x0

    :goto_4c
    if-ge v4, v3, :cond_99

    aget-object v5, v2, v4

    .line 78
    :try_start_50
    iget-object v6, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/annotation/ElementType;->valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_5f} :catch_62

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 81
    :catch_62
    move-exception p1

    new-instance p1, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v0, "invalid --element"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_6b
    const-string v3, "--print="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    :try_start_7d
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_82} :catch_9d

    const/4 v4, 0x0

    :goto_83
    if-ge v4, v3, :cond_99

    aget-object v5, v2, v4

    .line 89
    :try_start_87
    iget-object v6, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_96} :catch_9d

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_99
    :goto_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 92
    :catch_9d
    move-exception p1

    new-instance p1, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v0, "invalid --print"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_a6
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->files:[Ljava/lang/String;

    .line 96
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_af
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->aclass:Ljava/lang/String;

    if-eqz p1, :cond_f0

    .line 106
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 107
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->printTypes:Ljava/util/EnumSet;

    sget-object v0, Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;->CLASS:Lcom/s1243808733/android/dx/command/annotool/Main$PrintType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_c2
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 111
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    sget-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_d1
    iget-object p1, p0, Lcom/s1243808733/android/dx/command/annotool/Main$Arguments;->eTypes:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p1

    .line 116
    sget-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e8

    return-void

    .line 119
    :cond_e8
    new-instance p1, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v0, "only --element parameters \'type\' and \'package\' supported"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_f0
    new-instance p1, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;

    const-string v0, "--annotation must be specified"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/command/annotool/Main$InvalidArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_f9

    :goto_f8
    throw p1

    :goto_f9
    goto :goto_f8
.end method
