.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;->name:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;->name:Ljava/lang/String;

    return-object v0
.end method
