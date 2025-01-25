.class public Lcom/s1243808733/data/OutputApk$OutputType;
.super Ljava/lang/Object;
.source "OutputApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/data/OutputApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputType"
.end annotation


# instance fields
.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/s1243808733/data/OutputApk$OutputType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/s1243808733/data/OutputApk$OutputType;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/s1243808733/data/OutputApk$OutputType;->type:Ljava/lang/String;

    return-object p0
.end method
