.class public Lcom/luajava/Console;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luajava/LuaState;->openLibs()V

    array-length v1, p0

    if-lez v1, :cond_6e

    move v1, v0

    :goto_c
    array-length v0, p0

    if-lt v1, v0, :cond_10

    :goto_f
    return-void

    :cond_10
    aget-object v0, p0, v1

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->LloadFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0

    :cond_1f
    if-eqz v0, :cond_6a

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Error on file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v1, p0, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, ". "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_6a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_6e
    :try_start_6e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "API Lua Java - console mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_88
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_96

    const-string v0, "exit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_96
    invoke-virtual {v2}, Lcom/luajava/LuaState;->close()V

    goto/16 :goto_f

    :cond_9b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v4, "from console"

    invoke-virtual {v2, v0, v4}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ae

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0

    :cond_ae
    if-eqz v0, :cond_d2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error on line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_d9} :catch_65

    goto :goto_88
.end method
