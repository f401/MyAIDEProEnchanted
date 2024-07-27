.class public Lcom/baidu/android/common/util/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/common/util/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final DIGIT:I = 0x3

.field public static final LATIN:I = 0x1

.field public static final PINYIN:I = 0x2

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final SYMBOL:I = 0x4

.field public static final UNKNOWN:I = 0x5


# instance fields
.field public isPolyphonic:Z

.field public polyphonicPinyins:[Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/baidu/android/common/util/HanziToPinyin$Token;->type:I

    .line 100
    iput-object p2, p0, Lcom/baidu/android/common/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/baidu/android/common/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 102
    return-void
.end method
